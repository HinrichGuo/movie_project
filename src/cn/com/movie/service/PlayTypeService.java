package cn.com.movie.service;

import java.util.List;

import org.springframework.stereotype.Service;

import cn.com.movie.pojo.PlayType;

@Service
public interface PlayTypeService {
	int deleteByPrimaryKey(Integer id);

	int insert(PlayType record);

	int insertSelective(PlayType record);

	PlayType selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(PlayType record);

	int updateByPrimaryKey(PlayType record);

	List<PlayType> selectAll();
}
