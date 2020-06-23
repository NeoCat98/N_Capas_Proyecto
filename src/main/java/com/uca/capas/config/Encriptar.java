package com.uca.capas.config;


import java.security.Key;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

public class Encriptar {
	
	private static final String alg="AES";
	private byte[] keyValue;
	
	public Encriptar() {
		String key = "lv39eptlvuhaqqsr";
		keyValue = key.getBytes();
	}
	
	public String encrypt(String Data) throws Exception{
		Key key = generateKey();
		Cipher c = Cipher.getInstance(alg);
		c.init(Cipher.ENCRYPT_MODE, key);
		byte[] encVal =  c.doFinal(Data.getBytes());
		String encryptedValue = new BASE64Encoder().encode(encVal);
		return encryptedValue;
	}
	
	public String decrypt(String encryptedData) throws Exception{
		Key key = generateKey();
		Cipher c = Cipher.getInstance(alg);
		c.init(Cipher.DECRYPT_MODE, key);
		byte[] decordedValue = new BASE64Decoder().decodeBuffer(encryptedData);
		byte[] decValue = c.doFinal(decordedValue);
		String decryptedValue = new String(decValue);
		return decryptedValue;
	}
	

	private Key generateKey() throws Exception{
		Key key = new SecretKeySpec(keyValue, alg);
		
		return key;
	}
}
