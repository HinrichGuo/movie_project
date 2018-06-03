package cn.com.movie.utils;

public class CommonUtil {

	// 字符串数组转 逗号隔开的字符串 ; 后期利用泛型扩展为任意类型数组
	public static String join(String[] arr, String demi) {
		if (arr.length == 0)
			return "";

		StringBuilder sb = new StringBuilder();

		for (int i = 0, len = arr.length; i < len; i++) {
			sb.append(arr[i]);
			if (i != len - 1)
				sb.append(demi);
		}
		return sb.toString();
	}

	// 字符串数组转 默认逗号隔开的字符串 ; 后期利用泛型扩展为任意类型数组
	public static String join(String[] arr) {
		return join(arr, ",");
	}

}
