package cn.com.movie.dao;

import java.util.List;

import cn.com.movie.pojo.FilmComment;

public interface FilmCommentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(FilmComment record);

    int insertSelective(FilmComment record);

    FilmComment selectByPrimaryKey(Integer id);
    
    List<FilmComment> selectfilmComment(Integer id);

    int updateByPrimaryKeySelective(FilmComment record);

    int updateByPrimaryKey(FilmComment record);
}