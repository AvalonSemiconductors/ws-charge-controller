import java.io.*;
import java.util.*;

public class Converter {
	private static int bitsRequired(long num) {
		long pow = 1;
		int bits = 1;
		while(pow <= num) {
			pow *= 2;
			bits++;
		}
		return bits == 1 ? 1 : bits - 1;
	}
	
	private static double noteFrequency(int note) {
		return 440.0 * Math.pow(2, (note - 69) / 12.0);
	}
	
	public static void main(String[] args) {
		try {
			int[] scale_lfsr = new int[65535];
			int lfsr = 1;
			for(int i = 0; i < 65535; i++) {
				scale_lfsr[i] = lfsr;
				int temp = lfsr << 1;
				int bit = (lfsr >> 15) & 1;
				bit ^= (lfsr >> 13) & 1;
				bit ^= (lfsr >> 12) & 1;
				bit ^= (lfsr >> 10) & 1;
				temp |= bit;
				lfsr = temp & 0xFFFF;
			}
			
			FullMIDILoader loader = new FullMIDILoader(new File("../fixed.mid"));
			loader.load(false, 1);
			/*List<Note> notes = null;
			for(int i = 0; i < loader.getNotes().size(); i++) {
				List<Note> p = loader.getNotes().get(i);
				if(p.size() != 0) {
					if(notes == null) notes = p;
					else notes.addAll(p);
				}
			}
			if(notes == null) throw new Exception("No notes found in file");
			if(loader.getTempos().size() != 1) throw new Exception("MIDI file has no or too many tempo events");
			//TempoEvent t = loader.getTempos().get(0);
			System.out.println(loader.getTPB());
			List<Integer> uniqueNoteLens = new ArrayList<Integer>();
			for(int i = 0; i < notes.size(); i++) {
				int len = (int)(notes.get(i).getEnd() - notes.get(i).getStart());
				boolean found = false;
				for(int j = 0; j < uniqueNoteLens.size(); j++) if(uniqueNoteLens.get(j) == len) {
					found = true;
					break;
				}
				if(!found) {
					if(uniqueNoteLens.size() == 0) uniqueNoteLens.add(len);
					else {
						boolean inserted = false;
						for(int j = 0; j < uniqueNoteLens.size(); j++) {
							if(uniqueNoteLens.get(j) > len) {
								inserted = true;
								uniqueNoteLens.add(j, len);
								break;
							}
						}
						if(!inserted) uniqueNoteLens.add(len);
					}
				}
			}
			for(int i = 0; i < uniqueNoteLens.size(); i++) System.out.println(uniqueNoteLens.get(i));*/
			final double clockSpeed = 7500000 / 2;
			for(int i = 0; i < loader.getNotes().size(); i++) {
				System.out.println("Processing " + Integer.toString(i + 1) + "/" + Integer.toString(loader.getNotes().size()));
				List<PSGEvent> events = new ArrayList<PSGEvent>();
				List<Note> trackNoets = loader.getNotes().get(i);
				List<Integer> uniqueNoteVals = new ArrayList<Integer>();
				uniqueNoteVals.add(trackNoets.get(0).getPitch());
				for(int j = 0; j < trackNoets.size(); j++) {
					int notev = trackNoets.get(j).getPitch();
					boolean found = false;
					for(int k = 0; k < uniqueNoteVals.size(); k++) if(uniqueNoteVals.get(k) == notev) {
						found = true;
						break;
					}
					if(!found) {
						found = false;
						for(int k = 0; k < uniqueNoteVals.size(); k++) {
							if(uniqueNoteVals.get(k) > notev) {
								found = true;
								uniqueNoteVals.add(k, notev);
								break;
							}
						}
						if(!found) uniqueNoteVals.add(notev);
					}
				}
				double unitSize = (double)loader.getTPB() / 4.0d;
				for(int j = -1; j < trackNoets.size(); j++) {
					long start = 0;
					long end = 0;
					if(j >= 0) {
						Note n = trackNoets.get(j);
						start = n.getStart();
						end = n.getEnd();
						int len = (int)(end - start);
						len = (int)(Math.round((double)len / (double)unitSize));
						if(len > 16) throw new Exception("Note too long at tick " + start);
						if(len == 0) throw new Exception("Note too short at tick " + start);
						int noteIndex = uniqueNoteVals.indexOf(n.getPitch());
						events.add(new PSGEvent(noteIndex + 1, len - 1));
					}
					if(j != trackNoets.size() - 1) {
						Note nextN = trackNoets.get(j + 1);
						int diff = (int)(nextN.getStart() - end);
						if(diff < 0) throw new Exception("Overlapping notes at tick " + nextN.getStart());
						diff = (int)(Math.round((double)diff / (double)unitSize));
						while(diff != 0) {
							if(diff >= 16) {
								events.add(new PSGEvent(0, 15));
								diff -= 16;
							}else {
								events.add(new PSGEvent(0, diff - 1));
								diff = 0;
							}
						}
					}
				}
				events.add(new PSGEvent(0, 15));
				events.add(new PSGEvent(0, 15));
				events.add(new PSGEvent(0, 15));
				events.add(new PSGEvent(0, 15));
				
				BufferedWriter bw = new BufferedWriter(new FileWriter(new File("lut_" + i + ".v")));
				int req = bitsRequired(uniqueNoteVals.size() + 1);
				bw.write("`default_nettype none");
				bw.newLine();
				bw.newLine();
				bw.write("module channel" + i + "(");
				bw.newLine();
				bw.write("\tinput clk_i,");
				bw.newLine();
				bw.write("\tinput rst,");
				bw.newLine();
				bw.write("\toutput reg OP,");
				bw.newLine();
				bw.write("\toutput finished");
				bw.newLine();
				bw.write(");");
				bw.newLine();
				bw.newLine();
				
				bw.write("wire [" + (req - 1) + ":0] scale_ROM_idx;");
				bw.newLine();
				bw.write("localparam scale_bitsn1 = " + (req - 1) + ";");
				bw.newLine();
				req = bitsRequired(scale_lfsr.length);
				bw.write("reg [" + (req - 1) + ":0] scale_ROM;");
				bw.newLine();
				bw.write("always @(*) begin");
				bw.newLine();
				bw.write("\tcase(scale_ROM_idx)");
				bw.newLine();
				bw.write("\tdefault: scale_ROM = 'hxxxxxxxx;");
				bw.newLine();
				bw.write("\t0: scale_ROM = 'h0;");
				bw.newLine();
				for(int j = 0; j < uniqueNoteVals.size(); j++) {
					double freq = noteFrequency(uniqueNoteVals.get(j));
					int div = (int)(clockSpeed / freq);
					if(div >= scale_lfsr.length) throw new Exception("Frequency out of possible range");
					div = scale_lfsr[scale_lfsr.length - div - 1];
					bw.write("\t" + (j + 1) + ": scale_ROM = 'h" + Integer.toHexString(div) + ";");
					bw.newLine();
				}
				bw.write("\tendcase");
				bw.newLine();
				bw.write("end");
				bw.newLine();
				bw.newLine();
				req = bitsRequired(events.size() + 1);
				bw.write("wire [" + (req - 1) + ":0] tune_ROM_idx;");
				bw.newLine();
				bw.write("localparam last_idx = " + (events.size() - 1) + ";");
				bw.newLine();
				bw.write("localparam pc_bitsn1 = " + (req - 1) + ";");
				bw.newLine();
				req = bitsRequired(uniqueNoteVals.size() + 1) + 4;
				bw.write("reg [" + (req - 1) + ":0] tune_ROM;");
				bw.newLine();
				bw.write("always @(*) begin");
				bw.newLine();
				bw.write("\tcase(tune_ROM_idx)");
				bw.newLine();
				bw.write("\tdefault: tune_ROM = 'hxxxxxxxx;");
				bw.newLine();
				for(int j = 0; j < events.size(); j++) {
					PSGEvent e = events.get(j);
					bw.write("\t" + j + ": tune_ROM = 'h" + Integer.toHexString(e.duration | (e.note << 4)) + ";");
					bw.newLine();
				}
				bw.write("\tendcase");
				bw.newLine();
				bw.write("end");
				bw.newLine();
				bw.newLine();
				bw.write("`include \"../channel.txt\"");
				bw.newLine();
				bw.newLine();
				bw.write("endmodule");
				bw.newLine();
				bw.newLine();
				bw.write("`default_nettype wire");
				bw.newLine();
				bw.close();
			}
		}catch(Exception e) {
			e.printStackTrace();
			System.exit(1);
		}
	}
}
