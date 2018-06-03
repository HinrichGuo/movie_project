package cn.com.movie.handler;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import cn.com.movie.pojo.Film;
import cn.com.movie.pojo.PageModel;
import cn.com.movie.service.FilmService;

/**
 * @title FilmHandler.java
 *        <p>
 * @author 杨晓鹏
 * @time 2018年3月29日/下午9:03:17
 */

@Controller
public class FilmHandler {

	@Autowired
	private FilmService filmService;
	PageModel<Film> pm = null;

	int result = 0;

	/**
	 * 留言管理
	 * 
	 * @return
	 */
	@RequestMapping("/commentFilm")
	public String commentView() {
		return "FilmComment";
	}

	// 查询全部
	/*
	 * @RequestMapping(value="/AllFilm",method=RequestMethod.GET) public String
	 * selectAllFilm(HttpServletRequest request,HttpServletResponse response) {
	 * 
	 * List<Film> data=filmService.selectAllFilm();
	 * System.out.println("测试查询全部业务  data"+data); request.setAttribute("films",
	 * data); return "AllFilm"; }
	 */

	// 通过id进行页面回显操作
	@RequestMapping("/lookFilm")
	public String getFilmById(HttpServletRequest request, HttpServletResponse response, @RequestParam("id") int id) {
		System.out.println("测试要修改的id" + id);
		Film film = filmService.getFilmOneById(id);
		request.setAttribute("film", film);

		return "updateFilm";
	}

	// 修改操作

	@RequestMapping("/updateFilm")
	public String updateFilm(Film film, @RequestParam("fileName") MultipartFile file, HttpServletRequest request,
			ModelMap model) {

		// 获得原始文件名
		String fileName = file.getOriginalFilename();
		System.out.println("原始文件名:" + fileName);

		// 新文件名
		String newFileName = UUID.randomUUID() + fileName;

		// 获得项目的路径
		ServletContext sc = request.getSession().getServletContext();
		// 上传位置
		String path = request.getServletContext().getInitParameter("filePath");// 设定文件保存的目录

		File f = new File(path);
		if (!f.exists())
			f.mkdirs();
		if (!file.isEmpty()) {
			try {
				FileOutputStream fos = new FileOutputStream(path + "//" + newFileName);
				InputStream in = file.getInputStream();
				int b = 0;
				while ((b = in.read()) != -1) {
					fos.write(b);
				}
				fos.close();
				in.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		System.out.println("上传图片到:" + path + "//" + newFileName);
		// 保存文件地址，用于JSP页面回显
		model.addAttribute("fileUrl", path + "//" + newFileName);

		System.out.println("测试addFilm" + film.toString());
		film.setFilmPoster(newFileName);

		if (film != null) {

			filmService.updateFilm(film);
		}

		return "redirect:/AllFilm";// 跳转到映射
	}

	@RequestMapping("/AllFilm")
	public String selectAllFilm(HttpServletRequest request, HttpServletResponse response) {
		String pageNow = request.getParameter("pageNow");
		String filmType = request.getParameter("filmType");
		String filmName = request.getParameter("filmName");
		// System.out.println("测试 filmType"+filmType);
		// System.out.println("测试filmName"+filmName);
		// 如皋filmType不为空，则通过filmType精确查询
		if (filmType != null && !"".equals(filmType)) {

			if (pageNow == null || "".equals(pageNow)) {// 判断是否为首页
				pageNow = "1";
			}
			pm = filmService.PageAccurateSelectFilmByType(Integer.parseInt(pageNow), filmType);
		}

		// System.out.println("测试333333333333333333333"+pageNow);
		else if (filmName != null && !"".equals(filmName)) {

			if (pageNow == null || "".equals(pageNow)) {// 判断是否为首页
				pageNow = "1";
			}
			pm = filmService.PageAccurateSelectFilmByName(Integer.parseInt(pageNow), filmName);

		}

		else {
			if (pageNow == null || "".equals(pageNow)) {
				pageNow = "1";
			}
			pm = filmService.PageSelectAllFilms(Integer.parseInt(pageNow));
			System.out.println("测试  pm" + pm);

		}
		request.setAttribute("pm", pm);

		return "AllFilm";

	}
	// 跳转到添加影片页面

	@RequestMapping("/jumpAddFilm")
	public String jumpAddFilm() {
		System.out.println("测试  jumpAddFilm");
		return "AddMovie";

	}

	@RequestMapping("/addFilm")
	public String addFilm(Film film, @RequestParam("fileName") MultipartFile file, HttpServletRequest request,
			ModelMap model) {
		// 获得原始文件名
		String fileName = file.getOriginalFilename();
		System.out.println("原始文件名:" + fileName);

		// 新文件名
		String newFileName = UUID.randomUUID() + fileName;

		// 获得项目的路径
		ServletContext sc = request.getSession().getServletContext();
		// 上传位置
		String path = request.getServletContext().getInitParameter("filePath");// 设定文件保存的目录

		File f = new File(path);
		if (!f.exists())
			f.mkdirs();
		if (!file.isEmpty()) {
			try {
				FileOutputStream fos = new FileOutputStream(path + "//" + newFileName);
				InputStream in = file.getInputStream();
				int b = 0;
				while ((b = in.read()) != -1) {
					fos.write(b);
				}
				fos.close();
				in.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		System.out.println("上传图片到:" + path + "//" + newFileName);
		// 保存文件地址，用于JSP页面回显
		model.addAttribute("fileUrl", path + "//" + newFileName);

		System.out.println("测试addFilm" + film.toString());
		film.setFilmPoster(newFileName);

		if (film != null) {

			filmService.insertFilm(film);
		}

		return "redirect:/AllFilm";

	}

	/*
	 * public String selectAllFilm() {
	 * 
	 * List<Film> films=filmService.selectAllFilm();
	 * 
	 * System.out.println("数据测试1111："+films);
	 * 
	 * 
	 * return "AllFilm"; }
	 */
	/*
	 * @RequestMapping(value="/AllFilm",method=RequestMethod.GET) public String
	 * selectAllFilm(Map<String ,Object> map) {
	 * 
	 * List<Film> data=filmService.selectAllFilm();
	 * System.out.println("测试查询全部业务  data"+data); map.put("films",data); return
	 * "AllFilm"; }
	 */

	@RequestMapping(value = "/deleteFilm")
	public String deleteFilm(HttpServletRequest request, HttpServletResponse response) {
		String film_id = request.getParameter("film_id");
		result = filmService.deleteFilm(Integer.parseInt(film_id));
		System.out.println("测试删除+result" + result);
		return "redirect:AllFilm";// 通过重定向跳转

	}

}
