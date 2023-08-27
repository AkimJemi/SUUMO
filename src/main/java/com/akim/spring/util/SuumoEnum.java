package com.akim.spring.util;

public final class SuumoEnum {
	public static enum AreaInfo {

		HOKKAIDO("HOKKAIDO", "北海道"), TOHOKU("TOHOKU", "東北"), KOSHINETSU("KOSHINETSU", "甲信越・北陸"), KANTO("KANTO", "関西"),
		TOKAI("TOKAI", "東海"), CHUGOKU("CHUGOKU", "中国"), KANSAI("KANSAI", "関東"), SHIKOKU("SHIKOKU", "四国"),
		KYUSHU("KYUSHU", "九州・沖縄");

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
			AreaInfo[] array = values();
			for (AreaInfo value : array) {
				if (key.equals(value.getKey())) {
					return value.getValue();
				}
			}
			return null;
		}
	}
}
