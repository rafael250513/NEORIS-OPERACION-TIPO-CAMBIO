package pe.operacion.util;

public class StringsUtil {

    public static boolean emptyOrNull(String s) {

        if(s == null || s.trim().equals("")) {
            return true;
        }

        return false;

    }

}
