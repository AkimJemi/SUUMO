package com.akim.spring.util;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.springframework.util.StringUtils;

public final class SuumoEnum {

    // AkimWorkingon
    public static enum AreaInfo {

        HOKKAIDO("hokkaido", "北海道"), TOHOKU("tohoku", "東北"), KOSHINETSU("koshinetsu", "甲信越・北陸"),
        KANTO("kanto", "関東"), TOKAI("tokai", "東海"), CHUGOKU("chugoku", "中国"),
        KANSAI("kansai", "関西"), SHIKOKU("shikoku", "四国"), KYUSHU("kyushu", "九州・沖縄");

        private String key;
        private String value;

        private AreaInfo(String key, String value) {
            this.key = key;
            this.value = value;
        }

        public String getKey() {
            return key;
        }

        public String getValue() {
            return value;
        }

        // コードNOに一致するジャンプ情報を返却するためのメソッド
        public static String value(String key) {
            for (AreaInfo value : values()) {
                if (key.equals(value.getKey())) {
                    return value.getValue();
                }
            }
            return null;
        }

        // コードNOに一致するジャンプ情報を返却するためのメソッド
        public static String key(String key) {
            for (AreaInfo value : values()) {
                if (key.equals(value.getKey())) {
                    return value.getKey();
                }
            }
            return null;
        }

        public static List<String> allKeys() {
            List<String> list = new ArrayList<>();
            for (AreaInfo value : values()) {
                list.add(value.getKey());
            }
            return list;
        }

        public static List<String> allValues() {
            List<String> list = new ArrayList<>();
            for (AreaInfo value : values()) {
                list.add(value.getValue());
            }
            return list;
        }
    }

    public static final Map<String, String> hokkaidoList;
    public static final Map<String, String> tohokuList;
    public static final Map<String, String> koshinetsuList;
    public static final Map<String, String> kantoList;
    public static final Map<String, String> tokaiList;
    public static final Map<String, String> chugokuList;
    public static final Map<String, String> kansaiList;
    public static final Map<String, String> shikokuList;
    public static final Map<String, String> kyushuList;
    static {
        Map<String, String> map = new LinkedHashMap<>();
        map.put("hokkaido", "北海道");
        hokkaidoList = map;
    }

    static {
        Map<String, String> map = new LinkedHashMap<>();
        map.put("niigata", "新潟県");
        map.put("ishikawa", "石川県");
        map.put("nagano", "長野県");
        map.put("toyama", "富山県");
        map.put("fukui", "福井県");
        map.put("yamanashi", "山梨県");
        tohokuList = map;
    }
    static {
        Map<String, String> map = new LinkedHashMap<>();
        map.put("aomori", "青森県");
        map.put("iwate", "岩手県");
        map.put("akita", "秋田県");
        map.put("miyagi", "宮城県");
        map.put("yamagata", "山形県");
        map.put("fukushima", "福島県");
        koshinetsuList = map;
    }
    static {
        Map<String, String> map = new LinkedHashMap<>();
        map.put("tokyo", "東京都");
        map.put("kanagawa", "神奈川県");
        map.put("chiba", "千葉県");
        map.put("saitama", "埼玉県");
        map.put("ibaraki", "茨城県");
        map.put("tochigi", "栃木県");
        map.put("gumma", "群馬県");

        kantoList = map;
    }
    static {
        Map<String, String> map = new LinkedHashMap<>();
        map.put("aichi", "愛知県");
        map.put("shizuoka", "静岡県");
        map.put("gifu", "岐阜県");
        map.put("mie", "三重県");
        tokaiList = map;
    }
    static {
        Map<String, String> map = new LinkedHashMap<>();
        map.put("okayama", "岡山県");
        map.put("hiroshima", "広島県");
        map.put("tottori", "鳥取県");
        map.put("shimane", "島根県");
        map.put("yamaguchi", "山口県");
        chugokuList = map;
    }
    static {
        Map<String, String> map = new LinkedHashMap<>();
        map.put("osaka", "大阪府");
        map.put("hyogo", "兵庫県");
        map.put("kyoto", "京都府");
        map.put("shiga", "滋賀県");
        map.put("nara", "奈良県");
        map.put("wakayama", "和歌山県");
        kansaiList = map;
    }
    static {
        Map<String, String> map = new LinkedHashMap<>();
        map.put("ehime", "愛媛県");
        map.put("kagawa", "香川県");
        map.put("kochi", "高知県");
        map.put("tokushima", "徳島県");
        shikokuList = map;
    }
    static {
        Map<String, String> map = new LinkedHashMap<>();
        map.put("fukuoka", "福岡県");
        map.put("saga", "佐賀県");
        map.put("nagasaki", "長崎県");
        map.put("kumamoto", "熊本県");
        map.put("oita", "大分県");
        map.put("miyazaki", "宮崎県");
        map.put("kagoshima", "鹿児島県");
        map.put("okinawa", "沖縄県");
        kyushuList = map;
    }

    public static enum PrefectureInfo {

        HOKKAIDO(AreaInfo.HOKKAIDO.key, hokkaidoList), TOHOKU(AreaInfo.TOHOKU.key, tohokuList),
        KOSHINETSU(AreaInfo.KOSHINETSU.key, koshinetsuList), KANTO(AreaInfo.KANTO.key, kantoList),
        TOKAI(AreaInfo.TOKAI.key, tokaiList), CHUGOKU(AreaInfo.CHUGOKU.key, chugokuList),
        KANSAI(AreaInfo.KANSAI.key, kansaiList), SHIKOKU(AreaInfo.SHIKOKU.key, shikokuList),
        KYUSHU(AreaInfo.KYUSHU.key, kyushuList);

        private String key;
        private Map<String, String> value;

        private PrefectureInfo(String key, Map<String, String> value) {
            this.key = key;
            this.value = value;
        }

        public String getKey() {
            return key;
        }

        public Map<String, String> getValue() {
            return value;
        }

        public static Map<String, String> value(String key) {
            for (PrefectureInfo value : values()) {
                if (key.equals(value.getKey())) {
                    return value.getValue();
                }
            }
            return null;
        }

        // コードNOに一致するジャンプ情報を返却するためのメソッド
        public static String key(String key) {
            for (PrefectureInfo value : values()) {
                if (key.equals(value.getKey())) {
                    return value.getKey();
                }
            }
            return null;
        }

        public static Map<String, Map<String, String>> allValues() {
            Map<String, Map<String, String>> area = new LinkedHashMap<>();
            for (PrefectureInfo chintaiInfo : values()) {
                area.put(chintaiInfo.key, chintaiInfo.value);
            }
            return area;
        }

        public static Map<String, String> getPrefectureMapByWard(String ward) {
            Map<String, String> map = new LinkedHashMap<>();
            for (PrefectureInfo chintaiInfo : values()) {
                if (chintaiInfo.key.equals(ward)) {
                    for (Entry<String, String> entry : chintaiInfo.value.entrySet()) {
                        map.put(entry.getKey(), entry.getValue());
                    }
                    break;
                }
            }
            return map;
        }

        public static Map<String, String> getPrefectureByPrefectureMap(String prefecture,
                Map<String, String> prefectureMap) {
            for (Entry<String, String> entry : prefectureMap.entrySet()) {
                if (StringUtils.pathEquals(entry.getKey(), prefecture)) {
                    Map<String, String> map = new LinkedHashMap<>();
                    map.put(entry.getKey(), entry.getValue());
                    return map;
                }
            }
            return null;
        }
    }
}