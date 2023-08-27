package com.akim.spring.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.akim.spring.util.SuumoEnum.AreaInfo;

public class SuumoUtil {

	public static final String AREA_VALUE = "areaValue";
	public static final String AREA_KEY = "areaKey";
	private static Pattern areaPattern = Pattern.compile("[/](.*?)[/]");

	public static String getAreaValue(String contextPath) {
		Matcher matcher = areaPattern.matcher(contextPath.toUpperCase());
		if (matcher.find()) {
			String area = AreaInfo.value(matcher.group(1));
			return area;
		}
		return SuumoMessage.NOTFOUND;
	}

	public static String getAreaKey(String contextPath) {
		Matcher matcher = areaPattern.matcher(contextPath.toUpperCase());
		if (matcher.find()) {
			return matcher.group(1).toLowerCase();
		}
		return SuumoMessage.NOTFOUND;
	}

}
