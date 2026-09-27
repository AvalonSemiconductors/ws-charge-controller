import java.io.*;

public class SamplesFixer {
	public static void main(String[] args) {
		try {
			FileInputStream fis = new FileInputStream("obj_dir/samples.bin");
			fis.skip(4);
			FileOutputStream fos = new FileOutputStream("samples_8.bin");
			while(fis.available() > 0) {
				short sample = (short)fis.read();
				int usample = sample & 0xFF;
				fos.write(usample & 0xFF);
				fis.read();
				fis.read();
				fis.read();
			}
			fos.close();
			fis.close();
		}catch(Exception e) {
			e.printStackTrace();
			System.exit(1);
		}
	}
}
