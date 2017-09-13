package jp.co.masa.util;

import java.util.ResourceBundle;

public class ReaderHelp {

    private final static String prop = "masahp";
    private final static ResourceBundle bundle = ResourceBundle.getBundle(prop);

    /**
     * property属性の値を取得
     * @param key 属性名
     * @return val 属性値
     */
    public static String getValue(String key) {
        if(null == key || "".equals(key)) {
            return "";
        }

        return bundle.getString(key);

    }

}
