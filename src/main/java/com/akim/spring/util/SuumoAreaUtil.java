package com.akim.spring.util;

import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.stereotype.Component;
import org.springframework.web.context.annotation.RequestScope;

import com.akim.spring.util.SuumoEnum.AreaInfo;

import lombok.Getter;

@Component
@RequestScope
@Getter
public class SuumoAreaUtil {

//    private static Pattern areaPattern = Pattern.compile("(.*?)[/]+");
    protected Pattern chintaiPattern = Pattern.compile("[/](.*?)[/]");

    public String getAreaValue(String contextPath) {
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
        for (String area : areaArray) {
            if (area != "") {
                String result = AreaInfo.key(area);
                if (result != null) {
                    return result;
                }
            }
        }
        return SuumoMessage.NOTFOUND;
    }

    public String getChintaiValue(String contextPath) {
        Matcher matcher = chintaiPattern.matcher(contextPath);
        if (matcher.find()) {
            String area = AreaInfo.value(matcher.group(0));
            return area;
        }
        return SuumoMessage.NOTFOUND;
    }

    public String getChintaiKey(String contextPath) {
        Matcher matcher = chintaiPattern.matcher(contextPath);
        if (matcher.find()) {
            return matcher.group(1);
        }
        return SuumoMessage.NOTFOUND;
    }

    public static String getPreFectureValueByPrefectureInfo(Map<String, String> prefectureInfo) {
        return prefectureInfo.entrySet().stream().findFirst().map(Map.Entry::getValue).orElse(null);
    }
}