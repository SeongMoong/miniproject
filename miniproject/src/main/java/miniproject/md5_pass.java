package miniproject;

import java.security.MessageDigest;

import org.springframework.stereotype.Component;

@Component
public class md5_pass {

	
	public String md5_make(String bpass) {
		System.out.println(bpass);
		StringBuilder sb = new StringBuilder();
		try {
			MessageDigest md = MessageDigest.getInstance("md5");
			md.update(bpass.getBytes());
			for(byte b : md.digest()) {
				sb.append(String.format("%x", b));
			}
		}catch(Exception e) {
			sb.append("null");
		}
		return sb.toString();
	}
}
