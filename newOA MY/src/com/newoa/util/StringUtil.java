package com.newoa.util;

/**
 * 工具类
 * 	工具类的功能函数一般都是static
 * 
 * @author Administrator
 *
 */
public class StringUtil {

	/**
	 * 判断字符串是否为空,null 和 "" 和 "   " 和 "null" 都为空
	 * 	为空 返回 true
	 * 	否则 返回 false
	 * @param str
	 * @return
	 * 
	 * @author cys
	 * 2016年9月2日13:46:53
	 * 
	 */
	public static boolean isEmpty( String str )
	{
		if( str != null && !str.equals( "" ) && !str.trim().equals( "" ) && !str.equalsIgnoreCase( "null" ) )
			return false;
		else
			return true;
	}
	
//	public static boolean isNumeric( String str )
//	{
//		return false;
//	}
}
