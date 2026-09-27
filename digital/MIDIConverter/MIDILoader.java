import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class MIDILoader {
	
	private List<Track> tracks;
	private int type = 0;
	private int trackCount;
	private int TPB;
	private long lengthInTicks;
	private long notecount;
	public static double multiplier = 1;
	private boolean largePiano;
	
	public MIDILoader(File f, boolean largePiano) throws Exception {
		this.largePiano = largePiano;
		loadMidi(f);
	}
	
	//The only reason the MidiToVideo class is passed in here is to set the value of the progress bar in the GUI
	private void loadMidi(File f) throws Exception {
		FileChannelInputStream stream = new FileChannelInputStream(f);
		tracks = new ArrayList<Track>();
		//Check if file beginns with MThd
		byte[] indentifier = new byte[4];
		stream.read(indentifier);
		String s = new String(indentifier);
		if(!s.equals("MThd")){
			stream.close();
			throw new Exception("Invalid file header: " + s);
		}
		indentifier = null;
		s = null;
		//Read header
		byte[] headerSize = new byte[4];
		stream.read(headerSize);
		int size = bytesToInt(headerSize);
		s = null;
		headerSize = null;
		byte[] header = new byte[size];
		stream.read(header);
		//Extract MIDI type (0,1 or 2), track count and ticks per beat (TPB) from header
		type = bytesToInt(Arrays.copyOfRange(header, 0, 2));
		trackCount = bytesToInt(Arrays.copyOfRange(header, 2, 4));
		TPB  = (int) (bytesToInt(Arrays.copyOfRange(header, 4, 6)) * multiplier);
		long[] lengths = new long[trackCount];
		//Load tracks
		for(int i = 0; i < trackCount; i++){
			System.out.println("Loading track " + i + " out of " + trackCount);
			Track t = new Track(largePiano);
			boolean b = t.loadTrack(stream);
			lengths[i] = t.getLengthInTicks();
			notecount += t.getNotecount();
			if(!b){
				return;
			}
			tracks.add(t);
		}
		//The best way to get the length of the entire MIDI in ticks is just to set the length of the entire MIDI to the length of the longest track
		lengthInTicks = 0;
		for(long l:lengths){
			if(l > lengthInTicks){
				lengthInTicks = l;
			}
		}
		System.out.println(notecount);
		stream.close();
	}
	
	public long getLengthInTicks(){
		return lengthInTicks;
	}
	
	//Memory management
	public void unload(){
		for(Track t:tracks){
			t.unload();
		}
	}
	
	private int bytesToInt(byte[] lol) {
		if(lol.length == 2) return ((lol[0] & 0xFF) << 8) | (lol[1] & 0xFF);
		return ((lol[0] & 0xFF) << 24) | ((lol[1] & 0xFF) << 16) | ((lol[2] & 0xFF) << 8) | (lol[3] & 0xFF);
	}
	
	public int getType(){
		return type;
	}
	
	public int getTrackCount(){
		return trackCount;
	}
	
	public List<Track> getTracks(){
		return tracks;
	}
	
	public int getTPB(){
		return TPB;
	}
	
	public long getNoteCount(){
		return notecount;
	}
	
}
