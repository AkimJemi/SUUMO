package com.akim.spring.util;

public final class SuumoEnum {
	
	// AkimWorkingon
	public static final String HOKKAIDO = "";
	
	public static enum AreaInfo {

		HOKKAIDO("hokkaido", "北海道"), TOHOKU("tohoku", "東北"), KOSHINETSU("koshinetsu", "甲信越・北陸"),
		KANTO("kanto", "関西"), TOKAI("tokai", "東海"), CHUGOKU("chugoku", "中国"),
		KANSAI("kansai", "関東"), SHIKOKU("shikoku", "四国"), KYUSHU("kyushu", "九州・沖縄");

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

		// コードNOに一致するジャンプ情報を返却するためのメソッド
		public static String key(String key) {
			AreaInfo[] array = values();
			for (AreaInfo value : array) {
				if (key.equals(value.getKey())) {
					return value.getKey();
				}
			}
			return null;
		}
	}

	public static enum ChintaiInfo {

		HOKKAIDO("hokkaido", "北海道"), TOHOKU("tohoku", "東北"), KOSHINETSU("koshinetsu", "甲信越・北陸"),
		KANTO("kanto", "関西"), TOKAI("tokai", "東海"), CHUGOKU("chugoku", "中国"),
		KANSAI("kansai", "関東"), SHIKOKU("shikoku", "四国"), KYUSHU("kyushu", "九州・沖縄");

		private String key;
		private String value;

		private ChintaiInfo(String key, String value) {
			this.key = key;
			this.value = value;
		}

		public String getKey() {
			return key;
		}

		public String getValue() {
			return value;
		}

		public static String value(String key) {
			ChintaiInfo[] array = values();
			for (ChintaiInfo value : array) {
				if (key.equals(value.getKey())) {
					return value.getValue();
				}
			}
			return null;
		}

		// コードNOに一致するジャンプ情報を返却するためのメソッド
		public static String key(String key) {
			ChintaiInfo[] array = values();
			for (ChintaiInfo value : array) {
				if (key.equals(value.getKey())) {
					return value.getKey();
				}
			}
			return null;
		}
	}

}
