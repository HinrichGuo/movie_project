package cn.com.movie.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.movie.dao.PlayTypeMapper;
import cn.com.movie.pojo.PlayType;

@Service("playTypeService")
public class PlayTypeServiceImpl implements PlayTypeService {

	@Autowired
	private PlayTypeMapper playTypeMapper;

	@Override
	public int deleteByPrimaryKey(Integer id) {
		int result = playTypeMapper.deleteByPrimaryKey(id);
		return result;
	}

	@Override
	public int insert(PlayType record) {
		int result = playTypeMapper.insert(record);
		return result;
	}

	@Override
	public int insertSelective(PlayType record) {
		int result = playTypeMapper.insertSelective(record);
		return result;
	}

	@Override
	public PlayType selectByPrimaryKey(Integer id) {
		PlayType pt = playTypeMapper.selectByPrimaryKey(id);
		return pt;
	}

	@Override
	public int updateByPrimaryKeySelective(PlayType record) {
		int result = playTypeMapper.updateByPrimaryKeySelective(record);
		return result;
	}

	@Override
	public int updateByPrimaryKey(PlayType record) {
		int result = playTypeMapper.updateByPrimaryKey(record);
		return result;
	}

	@Override
	public List<PlayType> selectAll() {
		return playTypeMapper.selectAll();
	}

}
