package cn.com.movie.service;

import cn.com.movie.pojo.Admin;

public interface AdminService {
	
	int deleteByPrimaryKey(Integer id);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(Integer id);
    
    Admin selectByNameAndPsw(Admin record);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);

}
