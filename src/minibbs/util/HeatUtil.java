package minibbs.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class HeatUtil {
	
	public static long turnToSecond(String timeString) throws ParseException {
        SimpleDateFormat df = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        Date d = df.parse(timeString);
        long seconds = d.getTime()/1000;
        return seconds;
	}
	
	public static int getHeat(long timeSecond,long l,int replyNum) {
		long temp = timeSecond-1562700000;
		return (int) (l+replyNum*5+temp/86400*5);
	}
	
	public static String dealTime(String timestr) {
		return timestr.split(" ")[0];
	}
}