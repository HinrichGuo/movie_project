package cn.com.movie.dao;

import java.util.List;

import cn.com.movie.pojo.PlayType;

public interface PlayTypeMapper {
	int deleteByPrimaryKey(Integer id);

	int insert(PlayType record);

	int insertSelective(PlayType record);

	PlayType selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(PlayType record);

	int updateByPrimaryKey(PlayType record);

	List<PlayType> selectAll();
}