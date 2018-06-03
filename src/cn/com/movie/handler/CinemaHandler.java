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
 * @author ����
 * @time 2018��3��29������8:46:57
 */
@Controller
public class CinemaHandler {

	@Autowired
	private CinemaService cinemaService;
	@Autowired
	private SjldsService SjldsService;

	/**
	 * ��Ӳ���
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

		// ���ԭʼ�ļ���

		String fileName = file.getOriginalFilename();
		System.out.println("ԭʼ�ļ���:" + fileName);

		// ���ļ���
		String newFileName = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()) + fileName;

		System.out.println("���ļ���" + newFileName);
		String path = request.getServletContext().getInitParameter("filePath");
		System.out.println("path" + path);

		// �����Ŀ��·��
		ServletContext sc = request.getSession().getServletContext();
		// �ϴ�λ��

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

		System.out.println("�ϴ�ͼƬ��:" + path + "\\" + newFileName);
		// �����ļ���ַ������JSPҳ�����
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
	 * ��ת�����ҳ��
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
