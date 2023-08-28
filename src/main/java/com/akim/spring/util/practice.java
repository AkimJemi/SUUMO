package com.akim.spring.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.akim.spring.util.SuumoEnum.AreaInfo;

public class practice {
	public static void main(String[] args) {
		Pattern pattern = Pattern.compile("[/](.*?)[/]");

		Matcher matcher = pattern.matcher("/HOKKAIDO/");
		System.out.println(matcher.find());
		String area = AreaInfo.value(matcher.group(1));
		new practice001();
		System.out.println(area);
		}

	public void test(String test) {

		System.out.println("practice.test()" + test);
	}
}
