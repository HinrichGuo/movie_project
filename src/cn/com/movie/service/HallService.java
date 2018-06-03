package cn.com.movie.service;

import java.util.List;

import cn.com.movie.pojo.Hall;

public interface HallService {
	int deleteByPrimaryKey(Integer id);

	int insert(Hall record);

	int insertSelective(Hall record);

	Hall selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(Hall record);

	int updateByPrimaryKey(Hall record);

	List<Hall> selectAll();

	Hall selectByName(Hall record);

}
