package cn.com.movie.handler;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;

import cn.com.movie.pojo.FilmOrder;
import cn.com.movie.service.FilmOrders;

@Controller
public class FilmOrderHandler {
	
	@Autowired
	private FilmOrders filmOrders;
	/**
	 * @author lry 
	 * @param film
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value = "/statistics")
	public String  tongji01(FilmOrder film, HttpServletResponse response,HttpServletRequest request) throws IOException {
		List<FilmOrder>  films=filmOrders.tongJi_2(film);
		
	/*PrintWriter out_1 = response.getWriter();
		Gson gson = new Gson();
		String dataStr_1 = gson.toJson(filmOrders.tongJi_2(film));
		System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@2222"+dataStr_1);
		out_1.println(dataStr_1);
		out_1.flush();
		out_1.close();*/
		request.setAttribute("films", films);
		//System.out.println("1111"+dataStr_1);*/
		
		//model.addAttribute("CinemaTicketAccount", dataStr_1);
		System.out.println("#######################################################################");
		return "StatisticsAllPage";
	}

}
