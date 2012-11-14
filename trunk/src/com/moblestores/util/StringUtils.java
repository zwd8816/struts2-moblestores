package com.moblestores.util;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
/**
 * 日期和字符串转化类
 * @author
 *
 */
public class StringUtils {
	//显示日期格式
	static SimpleDateFormat sd1 = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss") ;
	static SimpleDateFormat sd2 = new SimpleDateFormat("yyyy-MM-dd") ;
	
	//将类转化为字符串
	public static String toString(Object o){
		if (o == null){
			return "";
		}
		return o.toString();
	}
	
	/**
	 * 字符时间日期转化为日期时间
	 * @param str字符串日期时间
	 * @return 日期时间
	 */
	public static Date stringDateTimetoDateTime(String str){
		if (str == null ) return null ;
		
		try {
			Date dd = sd1.parse(str) ;
			return dd ;
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null ;
		
	}
	/**
	 * 将日期时间转化为字符串日期时间
	 * @param dd 日期时间
	 * @return 字符串日期时间
	 */
	public static String dateTimetoStr(Date dd){
		if (dd == null ) return "" ;
		String ff = sd1.format(dd) ;
			return ff ;	
	}
	/**
	 * 将字符串日期转化为日期
	 * @param str 字符串日期
	 * @return 日期
	 */
	public static Date stringtoDate(String str){
		if (str == null ) return null ;
		
		try {
			Date dd = sd2.parse(str) ;
			return dd ;
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null ;
		
	}
	/**
	 * 将日期转化为字符串日期
	 * @param dd日期
	 * @return 字符串日期
	 */
	public static String stringtoDate(Date dd){
		if (dd == null ) return "" ;
 
			String s = sd2.format(dd) ;
			return s ;
 
		
	}
	/**
	 * 产生随机数
	 * @param length
	 * @return
	 */
    public static String getCharAndNumr(int length)     
    {     
        String val = "";     
                 
        Random random = new Random();     
        for(int i = 0; i < length; i++)     
        {     
            String charOrNum = random.nextInt(2) % 2 == 0 ? "char" : "num"; // 输出字母还是数字     
                     
            if("char".equalsIgnoreCase(charOrNum)) // 字符串     
            {     
                int choice = random.nextInt(2) % 2 == 0 ? 65 : 97; //取得大写字母还是小写字母     
                val += (char) (choice + random.nextInt(26));     
            }     
            else if("num".equalsIgnoreCase(charOrNum)) // 数字     
            {     
                val += String.valueOf(random.nextInt(10));     
            }     
        }               
        return val;     
    }   
    
    
}
