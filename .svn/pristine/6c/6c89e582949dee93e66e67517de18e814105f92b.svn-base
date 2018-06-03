package cn.com.movie.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cn.com.movie.pojo.PageModel;
import cn.com.movie.pojo.User;
import cn.com.movie.service.UserService;

@Controller

public class UserHandler {
	@Autowired
	private UserService userService;
	PageModel<User> pm = null;

	@RequestMapping("/queryAllUser")
	public String queryAllUser(HttpServletRequest request, HttpServletResponse response) {
		String pageNow = request.getParameter("pageNow");
		String userName = request.getParameter("userName");
		String userPhone = request.getParameter("userPhone");
		// 如果userPhone不为空，则通过userPhone精确查询
		if (userPhone != null && !"".equals(userPhone)) {

			if (pageNow == null || "".equals(pageNow)) {// 判断是否为首页
				pageNow = "1";
			}
			pm = userService.PageSelectPreciseByPhone(Integer.parseInt(pageNow), userPhone);
		} // 如皋userName不为空，则通过userName模糊查询
		else if (userName != null && !"".equals(userName)) {
			if (pageNow == null || "".equals(pageNow)) {
				pageNow = "1";
			}
			pm = userService.PageSelectLikeByName(Integer.parseInt(pageNow), userName);
		} // 两者为空则为全部查询
		else {
			if (pageNow == null || "".equals(pageNow)) {
				pageNow = "1";
			}
			pm = userService.PageSelectAllUser(Integer.parseInt(pageNow));
		}

		request.setAttribute("pm", pm);
		// System.out.println("9999999999999"+listUser);
		System.out.println("\\\\\\\\\\\\\\\\\\\\\\" + pm);
		return "AllUser";

	}

	@RequestMapping("/deleteUser")
	public String deleteOne(@RequestParam("id") int id) {
		System.out.println("++++++++++++++++++++++++" + id);
		userService.deleteUser(id);
		return "redirect:/queryAllUser";

	}

	@RequestMapping("/quaryOne")
	public ModelAndView selectOne(@RequestParam("id") int id) {
		ModelAndView mv = new ModelAndView();
		User user = userService.selectByPrimaryKey(id);
		mv.addObject("User", user);
		mv.setViewName("updateUser");
		return mv;
	}

}
