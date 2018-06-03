package cn.com.movie.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.movie.dao.FilmCommentMapper;
import cn.com.movie.pojo.FilmComment;

/**
 * @title 
 * <p>影评中操作的具体实现
 * @author 路萍萍
 *
 * @time 2018年4月13日下午7:52:51
 */
@Service
public class FilmCommentServiceImpl implements FilmCommentService {

	@Autowired
	private FilmCommentMapper filmCommentMapper;

	@Override
	public List<FilmComment> selectfilmComment(int id) {
		
		return filmCommentMapper.selectfilmComment(id);
	}

}
