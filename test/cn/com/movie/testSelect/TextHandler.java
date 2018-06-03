package cn.com.movie.testSelect;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;

/**
 * @title TextHandler.java
 * <p>	ҳ���л�ȡ����ʹ����������ȡ
 * <p>	SSM ������Ӧ����
 * @author Rubin Zhang
 * @time	1 Apr 201817:38:59
 */
public class TextHandler {
	
	/**
	 * ԭʼ��Servlet API
	 * @param ss
	 * @param qs
	 */
	public void textData(HttpServletResponse ss,HttpServletRequest qs) {
		qs.setAttribute("key", "value");
		qs.getAttribute("KEY");
	}
	
	/**
	 * MAP ����
	 * @param map
	 * @return
	 */
	public String textData(Map<String,Object> map) {
		map.put("key", "value");
		/*${requestScope.key}*/
		return "success";
	}
	
	/**
	 * ʹ�� ModelAndView ����
	 * @return
	 */
	public ModelAndView textData() {
		ModelAndView dmv = new ModelAndView("success");
		dmv.addObject("key", "value");
		/*${requestScope.key}*/
		return dmv;
	}
	
	/**
	 * ʹ��  ModelMap ����
	 * @param mm
	 * @return
	 */
	public String textData(ModelMap mm) {
		
		mm.addAttribute("key", "value");
		/*${requestScope.key}*/
		return "success";
	}
}
