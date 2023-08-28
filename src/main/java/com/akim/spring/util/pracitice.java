package com.akim.spring.util;

public class pracitice {

	public static void main(String[] args) {
		String test = "/2/2/3/1";
		String[] array = test.split("/");
		System.out.println(array.length);
		for (String string : array) {
			System.out.println(string);
		}
				
		
	}

}
