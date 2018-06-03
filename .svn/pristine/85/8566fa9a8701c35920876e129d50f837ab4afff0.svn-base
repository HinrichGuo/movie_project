package cn.com.movie.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.com.movie.pojo.Admin;
import cn.com.movie.service.AdminService;

/**
 * @title SystemHandler.java
 *        <p>
 *        <p>
 * @author 盛韬
 * @time 下午9:00:04 /2018年3月31日
 */
@Controller
public class SystemHandler {
	@Autowired
	private AdminService adminService;

	/*@RequestMapping("/statistics")
	public String statisticsAll() {
		return "StatisticsAllPage";
	}
*/
	/**
	 * 检索所有的资源
	 * 
	 * @return
	 */
	@RequestMapping("/search")
	public String searchAll() {
		return "SearchAllPage";
	}

	/**
	 * 访问
	 * 
	 * @return
	 */
	@RequestMapping(value = "/indexLogin", method = RequestMethod.POST)
	public String index(Admin admin, HttpServletRequest request) {
		 System.out.println("测试用户 ：》》》》》》》》 " + admin);
		if (adminService.selectByNameAndPsw(admin) != null) {
			request.getSession().setAttribute("admin", admin);
			return "index";
		} else {
			return "redirect:/login.jsp";
		}
	}

	/**
	 * 安全退出
	 * 
	 * @param session
	 * @return
	 */
	@RequestMapping("/exit")
	public String exit(HttpSession session) {
		session.invalidate();
		return "redirect:/login.jsp";
	}
	
	@RequestMapping("/main")
	public String indexView() {
		return "index";
	}

}
