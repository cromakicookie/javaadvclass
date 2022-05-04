// 사진 가져오는 파일
//실제 사진 서버 공간에 넣어주는 역할
package util;

import java.io.*;



public class FileUtil {
	public static void saveImage(String root, String fname, byte[] data)
		throws IOException{
			root +="\\images";
			File f=new File(root);
			if(!f.exists()) {
				f.mkdir();
			}
			f=new File(root+"\\"+fname);
			FileOutputStream out=new FileOutputStream(f);
			out.write(data);
			out.close();
		}
	
}
