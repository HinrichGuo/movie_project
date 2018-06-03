package cn.com.movie.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.movie.dao.FilmCommentMapper;
import cn.com.movie.pojo.FilmComment;

/**
 * @title 
 * <p>Ӱ���в����ľ���ʵ��
 * @author ·ƼƼ
 *
 * @time 2018��4��13������7:52:51
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
