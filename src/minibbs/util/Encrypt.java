package minibbs.util;

import java.math.BigInteger;

import java.security.MessageDigest;

import java.security.SecureRandom;

public class Encrypt {
	public static final String KEY_MD5 = "MD5";

	public static String encrypt(String inputStr) {
		BigInteger bigInteger = null;
		try {
			MessageDigest md = MessageDigest.getInstance(KEY_MD5);
			byte[] inputData = inputStr.getBytes();
			md.update(inputData);
			bigInteger = new BigInteger(md.digest());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return bigInteger.toString(16);
	}
	
	public static int getSalt() {
		SecureRandom random = new SecureRandom();
	    int salt =random.nextInt();
	    return salt;

	}
}
