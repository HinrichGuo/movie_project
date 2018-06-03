package cn.com.movie.handler;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import cn.com.movie.service.SjldsService;

/**
 * SjldsServiceImpl.java
 * 
 * @describe
 *           <p>
 *           三级联动的核心业务
 * @author 郭欣
 * @creation 2017年4月10日下午10:18:34
 */
@Controller
public class SjldsHandler {
	@Autowired
	private SjldsService sjldsService;

	@ResponseBody// 响应到页面中
	@RequestMapping(value = "/getProvies", produces = { "application/json;", "text/html;charset=UTF-8;" })
	public void getProvies(HttpServletResponse response) throws IOException {
		response.setHeader("Content-Type", "text/html;charset=utf-8");  
		List<Map<String, Object>> pro = sjldsService.getProvice();
		System.out.println(".........." + pro);

		Gson gson = new Gson();
		String strs = gson.toJson(pro);

		System.out.println(strs);
		PrintWriter out = response.getWriter();
		out.write(strs);

		out.flush();
		out.close();

	}

	 @ResponseBody// 响应到页面中
	@RequestMapping(value = "/getCity", produces = "text/plain;charset=utf-8")
	public void getCities(@RequestParam("pro_id") String pro_id, HttpServletResponse response) throws IOException {
		response.setHeader("Content-Type", "text/html;charset=utf-8");  
		List<Map<String, Object>> city = sjldsService.getCityByProviceId(pro_id);
		PrintWriter out = response.getWriter();
		response.setContentType("text/xml");
		out.write("<citys>");
		for (Map<String, Object> map : city) {
			out.write("<city>");
			out.write("<cityid>");
			out.write(map.getOrDefault("cityid", "").toString());
			// System.out.println("测试市级ID："+map.getOrDefault("cityid",
			// "").toString());
			out.write("</cityid>");
			out.write("<cityvalue>");
			out.write(map.getOrDefault("city", "").toString());
			// System.out.println("测试市级："+map.getOrDefault("city",
			// "").toString());
			out.write("</cityvalue>");
			out.write("<provinceid>");
			out.write(map.getOrDefault("provinceid", "").toString());
			out.write("</provinceid>");
			out.write("</city>");
		}
		out.write("</citys>");
		out.flush();
		out.close();

	}

	@ResponseBody// 响应到页面中
	@RequestMapping(value = "/getArea", produces = "text/plain;charset=utf-8")
	public void getAreas(@RequestParam("city_id") String city_id, HttpServletResponse response) throws IOException {
		response.setHeader("Content-Type", "text/html;charset=utf-8");  
		List<Map<String, Object>> area = sjldsService.getAreaByCityId(city_id);
		PrintWriter out = response.getWriter();
		// 设置响应的数据类型
		response.setContentType("text/xml");
		out.write("<areas>");
		for (Map<String, Object> map : area) {
			out.write("<area>");
			out.write("<areaid>");
			out.write(map.getOrDefault("areaid", "").toString());
			System.out.println("测试区县ID：" + map.getOrDefault("areaid", "").toString());
			out.write("</areaid>");
			out.write("<areavalue>");
			out.write(map.getOrDefault("area", "").toString());
			System.out.println("测试区县：" + map.getOrDefault("area", "").toString());
			out.write("</areavalue>");
			out.write("<cityid>");
			out.write(map.getOrDefault("cityid", "").toString());
			out.write("</cityid>");
			out.write("</area>");
		}
		out.write("</areas>");
		out.flush();
		out.close();
		out.close();

	}

}
