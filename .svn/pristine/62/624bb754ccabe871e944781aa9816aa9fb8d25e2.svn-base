package cn.com.movie.utils;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * 
 *<p>Title:读取本地存储的乡镇、村id的cookie 工具类</p>	
 *<p>Description:</p>
 *<p>Company:www.itcxsw.com</p>
 * @author sgs
 * @date 2017年4月27日 下午7:23:54
 * 乡镇cookie的名称：account_town_id
 * 村cookie的名称：account_village_id
 */
public class CookieUtil {
	public static Cookie getCookieByName(HttpServletRequest request,String name){
	    Map<String,Cookie> cookieMap = ReadCookieMap(request);
	    if(cookieMap.containsKey(name)){
	        Cookie cookie = (Cookie)cookieMap.get(name);
	        return cookie;
	    }else{
	        return null;
	    }   
	}
	private static Map<String,Cookie> ReadCookieMap(HttpServletRequest request){  
	    Map<String,Cookie> cookieMap = new HashMap<String,Cookie>();
	    Cookie[] cookies = request.getCookies();
	    if(null!=cookies){
	        for(Cookie cookie : cookies){
	            cookieMap.put(cookie.getName(), cookie);
	        }
	    }
	    return cookieMap;
	}
	/**
	 * 设置cookie
	 * @param response
	 * @param name  cookie名字
	 * @param value cookie值
	 * @throws UnsupportedEncodingException 
	 */
	public static void addCookie(HttpServletResponse response,String name,String value) throws UnsupportedEncodingException{
		String urlName=URLEncoder.encode(value, "utf-8");  
	    Cookie cookie = new Cookie(name,urlName);
	    cookie.setPath("/");
	    cookie.setMaxAge(10*24*60*60);
	    response.addCookie(cookie);
	}
}
