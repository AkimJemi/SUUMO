package com.akim.spring.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.akim.spring.util.SuumoEnum.AreaInfo;

public class SuumoUtil {

//    private static Pattern areaPattern = Pattern.compile("(.*?)[/]+");
    private static Pattern chintaiPattern = Pattern.compile("[/](.*?)[/]");

    public static String getAreaValue(String contextPath) {
        String[] areaArray = contextPath.split("/");
        String result = null;
        for (String area : areaArray) {
            if (area != "") {
                result = AreaInfo.value(area);
                if (result != null) {
                    return result;
                }
            }
        }
        return SuumoMessage.NOTFOUND;
    }

    public static String getAreaKey(String contextPath) {
        String[] areaArray = contextPath.split("/");
        String result = null;
        for (String area : areaArray) {
            if (area != "") {
                result = AreaInfo.key(area);
                if (result != null) {
                    return result;
                }
            }
        }
        return SuumoMessage.NOTFOUND;
    }

    public static String getChintaiValue(String contextPath) {
        Matcher matcher = chintaiPattern.matcher(contextPath);
        if (matcher.find()) {
            String area = AreaInfo.value(matcher.group(0));
            return area;
        }
        return SuumoMessage.NOTFOUND;
    }

    public static String getChintaiKey(String contextPath) {
        Matcher matcher = chintaiPattern.matcher(contextPath);
        if (matcher.find()) {
            return matcher.group(1);
        }
        return SuumoMessage.NOTFOUND;
    }
}