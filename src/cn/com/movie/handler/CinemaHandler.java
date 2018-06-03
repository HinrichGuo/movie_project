package cn.com.movie.handler;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jmx.export.annotation.ManagedAttribute;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import cn.com.movie.pojo.Cinema;
import cn.com.movie.pojo.CinemaAddress;
import cn.com.movie.pojo.PageModel;
import cn.com.movie.service.CinemaService;
import cn.com.movie.service.SjldsService;

/**
 * @title CinemaHandler.java
 *        <p>
 *        <p>
 * @author 郭欣
 * @time 2018年3月29日下午8:46:57
 */
@Controller
public class CinemaHandler {

	@Autowired
	private CinemaService cinemaService;
	@Autowired
	private SjldsService SjldsService;

	/**
	 * 添加操作
	 * 
	 * @param cinema
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 * 
	 */
	@RequestMapping(value = "/addCinema", method = RequestMethod.POST)
	public String addCinema(Cinema cinema, @RequestParam("fileName") MultipartFile file, HttpServletRequest request,
			ModelMap model, @RequestParam("cinemaAdress") String cinemaAdress,
			@RequestParam("cinemaPhone") String cinemaPhone, CinemaAddress cinemaAddress)
			throws IOException, ServletException {
		cinemaAddress.setCinemaProvinces(SjldsService.getProviceById(cinemaAddress.getCinemaProvinces()));
		cinemaAddress.setCinemaCities(SjldsService.getCityById(cinemaAddress.getCinemaCities()));
		cinemaAddress.setCinemaAreas(SjldsService.getAreaById(cinemaAddress.getCinemaAreas()));

		// 获得原始文件名

		String fileName = file.getOriginalFilename();
		System.out.println("原始文件名:" + fileName);

		// 新文件名
		String newFileName = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()) + fileName;

		System.out.println("新文件名" + newFileName);
		String path = request.getServletContext().getInitParameter("filePath");
		System.out.println("path" + path);

		// 获得项目的路径
		ServletContext sc = request.getSession().getServletContext();
		// 上传位置

		File f = new File(newFileName);
		if (!f.exists())
			f.mkdirs();
		if (!file.isEmpty()) {
			try {
				FileOutputStream fos = new FileOutputStream(path + "\\" + newFileName);
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

		System.out.println("上传图片到:" + path + "\\" + newFileName);
		// 保存文件地址，用于JSP页面回显
		model.addAttribute("parent", path + "\\" + newFileName);

		if (cinema != null) {
			cinema.setCinemaLogo(newFileName);

			cinemaService.insertCinema(cinema);
			int id = cinema.getId();
			System.out.println("++++++++++++++++++++++" + cinema.getId());
			cinemaAddress.setCinemaId(id);
			cinemaService.insertCinemaAdress(cinemaAddress);

		}

		return "QueryCinema";

	}

	/**
	 * 跳转至添加页面
	 * 
	 * @return
	 */
	@RequestMapping("/jumpAddCinema")
	public String jumpAddCinema() {

		return "AddCinema";
	}
	@RequestMapping("/QueryCinema")
	public ModelAndView jumpQueryCinema(HttpServletRequest request) {
		String paegNow=request.getParameter("paegNow");
		if(paegNow==null|| "".equals(paegNow)) {
			paegNow="1";
		}
		ModelAndView mv=new ModelAndView();
		PageModel<Cinema> pm=cinemaService.pageAll(Integer.parseInt(paegNow));
		mv.addObject("pm", pm);
		mv.setViewName("AllCinema");
		return mv;
	}
	@RequestMapping("/LikeCinema")
    public ModelAndView LikeCinema(@RequestParam("cinemaName") String cinemaName,HttpServletRequest request,HttpServletResponse response) throws IOException {
    	String paegNow=request.getParameter("paegNow");
    	if(paegNow==null|| "".equals(paegNow)) {
			paegNow="1";
		}
    	ModelAndView mv=new ModelAndView();
    	PageModel<Cinema> pm=cinemaService.pageLikeAll(Integer.parseInt(paegNow), cinemaName);
    	mv.addObject("pm", pm);
		mv.setViewName("AllCinema");
		return mv;
    }
	@RequestMapping("/deleteCinema")
	public String deleteCinema(@RequestParam("id") int id,HttpServletResponse response) throws IOException {
		cinemaService.updateStater(id);
		return "redirect:/QueryCinema";
			
		
	}
	@RequestMapping("/quaryOneCinema")
	public ModelAndView quaryOne(@RequestParam("id") int id,HttpServletResponse response) throws IOException {
		Cinema cinema=cinemaService.selectOneCinema(id);
		ModelAndView mv=new ModelAndView();
		List<CinemaAddress> data=cinemaService.selectByCinema_id(id);
		mv.addObject("Cinema", cinema);
		mv.addObject("data", data);
		mv.setViewName("UpdateCinema");
		return mv;
			
		
	}
	@ModelAttribute
	public  void selectOne(@RequestParam(value = "id", required = false) Integer id,HttpServletRequest request) {
		if(id!=null) {
			request.setAttribute("Cinema",cinemaService.selectOneCinema(id));
			
		}
	}
	@RequestMapping("/UpdateCinema")
	public String UpdateCinema(@RequestParam("Cinema") Cinema Cinema) {
		cinemaService.updateCinema(Cinema);
		return "redirect:/QueryCinema";
	}

}
