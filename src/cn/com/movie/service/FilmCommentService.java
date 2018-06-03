package cn.com.movie.service;

import java.util.List;

import cn.com.movie.pojo.FilmComment;

/**
 * @title 
 * <p>影片留言接口
 * @author 路萍萍
 *
 * @time 2018年4月13日下午7:52:06
 */
public interface FilmCommentService {
	
	List<FilmComment>  selectfilmComment(int id);

}
