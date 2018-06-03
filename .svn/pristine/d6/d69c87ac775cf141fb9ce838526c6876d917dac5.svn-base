package cn.com.movie.testSelect;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;

/**
 * @title TextHandler.java
 * <p>	页面中获取必须使用请求对象获取
 * <p>	SSM 数据响应类型
 * @author Rubin Zhang
 * @time	1 Apr 201817:38:59
 */
public class TextHandler {
	
	/**
	 * 原始的Servlet API
	 * @param ss
	 * @param qs
	 */
	public void textData(HttpServletResponse ss,HttpServletRequest qs) {
		qs.setAttribute("key", "value");
		qs.getAttribute("KEY");
	}
	
	/**
	 * MAP 集合
	 * @param map
	 * @return
	 */
	public String textData(Map<String,Object> map) {
		map.put("key", "value");
		/*${requestScope.key}*/
		return "success";
	}
	
	/**
	 * 使用 ModelAndView 对象
	 * @return
	 */
	public ModelAndView textData() {
		ModelAndView dmv = new ModelAndView("success");
		dmv.addObject("key", "value");
		/*${requestScope.key}*/
		return dmv;
	}
	
	/**
	 * 使用  ModelMap 对象
	 * @param mm
	 * @return
	 */
	public String textData(ModelMap mm) {
		
		mm.addAttribute("key", "value");
		/*${requestScope.key}*/
		return "success";
	}
}
