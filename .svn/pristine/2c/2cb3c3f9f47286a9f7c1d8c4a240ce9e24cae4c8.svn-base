package cn.com.movie.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.com.movie.pojo.Film;
import cn.com.movie.pojo.FilmComment;
import cn.com.movie.service.FilmCommentService;
import cn.com.movie.service.FilmService;

/**
 * @title 
 * <p>
 * @author 路萍萍
 *
 * @time 2018年4月13日下午7:40:15
 */
@Controller
public class FilmCommentHandler {
	
	@Autowired
	private FilmCommentService fileCommentService;
	@Autowired
	private FilmService filmService;
	
	/**
	 * 留言管理
	 * 
	 * @return
	 */
	@RequestMapping("/selectfilmComment")
	public String commentView(HttpServletRequest request,HttpServletResponse response,   @RequestParam("id") int id) {
		List<FilmComment> filmComment = fileCommentService.selectfilmComment(id);
		request.setAttribute("filmComment", filmComment);
		System.out.println("0000000000000      "+filmComment);
		Film film = filmService.getFilmOneById(id);
		request.setAttribute("film", film);
		//System.out.println("1111111111111"+filmService.getFilmOneById(id));
		
		return "FilmComment";
	}

}
