package cn.com.movie.service;

import java.util.List;

import cn.com.movie.pojo.FilmComment;

/**
 * @title 
 * <p>ӰƬ���Խӿ�
 * @author ·ƼƼ
 *
 * @time 2018��4��13������7:52:06
 */
public interface FilmCommentService {
	
	List<FilmComment>  selectfilmComment(int id);

}
