package util;

import java.security.MessageDigest;
import java.util.Random;

//인증번호 6자리 ->메일  scan.equals(result)==1 비밀번호 변경창
public class StringUtil {
	public static String randomCode() {
		String result ="";
		Random random = new Random();
		for(int i=0; i<6; i++) {
			result += Integer.toString(random.nextInt(10));
			//random 함수로 0~9 사의 숫자를 한개 뽑아 문자로 변환 후 result에 삽입, for문이 다 도는 동안 expanded
		}
		return result;
	}
	
	//비밀번호 해시로 암호화 1111 
	public static String stringToHash(String txt) throws Exception{
	    StringBuffer sbuf = new StringBuffer();
	     
	    MessageDigest mDigest = MessageDigest.getInstance("SHA-256");
	    mDigest.update(txt.getBytes());
	     
	    byte[] msgStr = mDigest.digest() ;
	     
	    for(int i=0; i < msgStr.length; i++){
	        byte tmpStrByte = msgStr[i];
	        String tmpEncTxt = Integer.toString((tmpStrByte & 0xff) + 0x100, 16).substring(1);
	         
	        sbuf.append(tmpEncTxt) ;
	    }
	     
	    return sbuf.toString(); //비밀번호 ioveu -> lkasdjf;ldfkjoieejf == hash('iloveu')? => 로그인 성공
	}
	
	
	
//	public static void main(String[] args) {
//		
//		System.out.println(randomCode());
//	}
	
}
