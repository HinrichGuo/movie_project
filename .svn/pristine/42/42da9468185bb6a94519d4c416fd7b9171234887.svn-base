package cn.com.movie.handler;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import cn.com.movie.pojo.PlayType;
import cn.com.movie.service.PlayTypeService;

@Controller
public class CinemaTypeHandler {

	@Autowired
	private PlayTypeService playTypeService;

	@RequestMapping(value = "/moviePlayType", method = RequestMethod.GET)
	public String addView() {
		return "MovieType";
	}

	@RequestMapping(value = "/savePlayType")
	public String save(@RequestParam(value = "typeName", required = false) String typeName) {
		// System.out.println(typeName + "<<<<<<<<<<<<<<<<<<<<<");
		PlayType record = new PlayType();
		record.setTypeName(typeName);
		playTypeService.insert(record);

		return "redirect:/moviePlayType";
	}

	@RequestMapping(value="/movieAll",produces = "text/plain;charset=utf-8")
	@ResponseBody
	public void selectAll(HttpServletResponse response) throws IOException {
		response.setHeader("Content-Type", "text/html;charset=utf-8");  
		PrintWriter out = response.getWriter();
		out.write(new Gson().toJson(playTypeService.selectAll()));
		out.flush();
		out.close();
	}
}
