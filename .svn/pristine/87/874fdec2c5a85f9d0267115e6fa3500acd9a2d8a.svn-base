package cn.com.movie.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.com.movie.service.CinemaService;
import cn.com.movie.service.HallService;

@Controller
public class HallHandler {

	@Autowired
	private CinemaService cinemaService;
	
	@Autowired
	private HallService hallService;
	
	
	/**
	 * 显示影院影厅添加界面
	 * @return
	 */
	@RequestMapping(value="/addHallView/{id}")
	public String addView(@PathVariable("id") Integer id,ModelMap modelMap) {
		modelMap.addAttribute("cinema", cinemaService.selectOneCinema(id));
		return "AddHall";
	}
	
	
	
}
