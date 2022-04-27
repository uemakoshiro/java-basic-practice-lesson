package util;

/**
 * メソッドをまとめたParamUtilクラス
 */
public class ParamUtil {

    /**
     * ポイント計算
     */
	public static int getPoint(int amount) {
		int point = (int)(amount * 0.01);
		return point;
	}

    /**
     * ポイント計算(ランクあり)
     */
	public static int getPoint(int amount, int rank) {
		int point = 0;
		switch(rank) {
		case 1:
			point = (int)(amount * 0.02);
			break;
		case 2:
			point = (int)(amount * 0.03);
			break;
		}
		return point;
	}

    /**
     * 引数に指定した文字列がnull、または空文字かを判定
     */
	public static boolean isNullOrEmpty(String str) {
    	if (str == null || "".equals(str)) {
    		return true;
    	}else {
	        return false;
	    }
    }

}
