package cn.com.movie.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//@WebFilter("/*")
public class LoginFiler implements Filter {

	public static final String LOGIN = "/movie_project/login.jsp";
	public static final String LOGIN_CONTROLLER = "/movie_project/indexLogin";

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// System.out.println("获取所有的资源");
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		HttpSession session = req.getSession();

		String reqUri = req.getRequestURI();
		String projectPath = req.getContextPath();

		String targetURL = reqUri.substring(projectPath.length());

		System.out.println("++++++===++++项目名称 : " + projectPath + " ,httpURL: " + reqUri + " ,target :" + targetURL);

		if (reqUri.contains("/artDialog/") || reqUri.contains("/assets/") || reqUri.contains("/img/")
				|| reqUri.contains("/js/") || reqUri.contains("/my97/")) {
			chain.doFilter(request, response);
			return;
		}
		if (targetURL.indexOf(LOGIN) > 0 || targetURL.indexOf(LOGIN_CONTROLLER) > 0 || targetURL.equals("/")) {
			chain.doFilter(request, response);
			return;
		}

		/*
		 * if (session.getAttribute("admin") == null) {
		 * resp.sendRedirect(projectPath+"/"); return; }
		 */
		// chain.doFilter(request, response);

	}

	public void init(FilterConfig fConfig) throws ServletException {
	}

	@Override
	public void destroy() {

	}

}
