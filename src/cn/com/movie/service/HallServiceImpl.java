package cn.com.movie.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.movie.dao.HallMapper;
import cn.com.movie.pojo.Hall;

@Service
public class HallServiceImpl implements HallService {

	@Autowired
	private HallMapper hallMapper;

	@Override
	public int deleteByPrimaryKey(Integer id) {
		return hallMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Hall record) {
		return hallMapper.insert(record);
	}

	@Override
	public int insertSelective(Hall record) {
		return hallMapper.insertSelective(record);
	}

	@Override
	public Hall selectByPrimaryKey(Integer id) {
		return hallMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Hall record) {
		return hallMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Hall record) {
		return hallMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Hall> selectAll() {
		return hallMapper.selectAll();
	}

	@Override
	public Hall selectByName(Hall record) {
		return hallMapper.selectByName(record);
	}

}
