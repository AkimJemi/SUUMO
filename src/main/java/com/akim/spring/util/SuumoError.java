package com.akim.spring.util;

import java.util.List;
import java.util.Map;

import org.springframework.util.StringUtils;

public class SuumoError {

    public static void hasLengthOrError(String text) {
        if (StringUtils.hasLength(text))
            throw new NullPointerException();
    }

    public static <T> void resultCheckOrError(T clasz) {
        if (clasz instanceof String) {
            if (!StringUtils.hasLength(((String) clasz))) {
                throw new NullPointerException((String) clasz);
            }
        } else if (clasz instanceof List) {
            if (((List<?>) clasz).size() == 0) {
                throw new NullPointerException();
            }
        } else if (clasz instanceof Map) {
            if (((Map<?, ?>) clasz).size() == 0) {
                throw new NullPointerException();
            }
        }
    }
}
