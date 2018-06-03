package cn.com.movie.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.movie.dao.AdminMapper;
import cn.com.movie.pojo.Admin;

@Service("adminService")
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminMapper adminMapper;

	public int deleteByPrimaryKey(Integer id) {
		return adminMapper.deleteByPrimaryKey(id);
	}

	public int insert(Admin record) {
		return adminMapper.insert(record);
	}

	public int insertSelective(Admin record) {
		return adminMapper.insertSelective(record);
	}

	public Admin selectByPrimaryKey(Integer id) {
		return adminMapper.selectByPrimaryKey(id);
	}

	public Admin selectByNameAndPsw(Admin record) {
		return adminMapper.selectByNameAndPsw(record);
	}

	public int updateByPrimaryKeySelective(Admin record) {
		return adminMapper.updateByPrimaryKeySelective(record);
	}

	public int updateByPrimaryKey(Admin record) {
		return adminMapper.updateByPrimaryKey(record);
	}

}
