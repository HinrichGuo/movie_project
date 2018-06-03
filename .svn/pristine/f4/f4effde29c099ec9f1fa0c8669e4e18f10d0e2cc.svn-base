package cn.com.movie.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.movie.dao.UserMapper;
import cn.com.movie.pojo.Cinema;
import cn.com.movie.pojo.PageModel;
import cn.com.movie.pojo.User;
import cn.com.movie.utils.DbUtil;
import cn.com.movie.utils.PageUtil;

@Service
public class UserServiceImp implements UserService {
	@Autowired
	UserMapper userMapper;
	int totalPage;
	DbUtil db = new DbUtil();
	String sql;

	@Override
	public int insertUser(Cinema cinema) {

		return 0;
	}

	@Override
	public int deleteUser(int id) {

		return userMapper.updateStater(id);
	}

	@Override
	public int updateUser(Cinema cinema) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Map<String, Object>> selectAllUser() {

		return userMapper.selectAllUser();
	}

	@Override
	public List<User> selectAllUserByList(List<Map<String, Object>> list) {
		List<User> listUser = new ArrayList<>();
		User user = null;
		for (Map<String, Object> map : list) {
			user = new User(
					Integer.parseInt(
							map.getOrDefault("id", " ") == null ? " " : map.getOrDefault("id", " ").toString()),
					map.getOrDefault("user_name", " ") == null ? " " : map.getOrDefault("user_name", " ").toString(),
					map.getOrDefault("user_psw", " ") == null ? " " : map.getOrDefault("user_psw", " ").toString(),
					map.getOrDefault("user_phone", " ") == null ? " " : map.getOrDefault("user_phone", " ").toString(),
					map.getOrDefault("user_blank1", " ") == null ? " "
							: map.getOrDefault("user_blank1", " ").toString(),
					map.getOrDefault("user_blank2", " ") == null ? " "
							: map.getOrDefault("user_blank2", " ").toString(),
					map.getOrDefault("user_blank3", " ") == null ? " "
							: map.getOrDefault("user_blank3", " ").toString());
			listUser.add(user);
		}
		return listUser;
	}

	@Override

	public PageModel<User> PageSelectAllUser(int pageNow) {
		int totalCount = userMapper.selectTotalPage();// 查到总记录数
		PageUtil pu = new PageUtil(totalCount, pageNow);
		pu.setTotalPageCount(pu.getTotalPageCount());
		List<User> data = userMapper.PageSelectAll(pu.getStartPos(), pu.getPageSize());
		PageModel<User> pm = new PageModel<User>(data, pu);

		return pm;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.com.movie.service.UserService#PageSelectLikeByName(int,
	 * java.lang.String) 通过姓名模糊查询
	 */
	@Override
	public PageModel<User> PageSelectLikeByName(int pageNow, String userName) {
		sql = "select * from user_info where user_name like '%" + userName + "%'";
		System.out.println("--------" + userName);
		System.out.println("=============" + db.query(sql));
		int totalCount = db.query(sql).size();
		sql = "select * from user_info where user_name like '%" + userName + "%' limit ?,?";
		PageUtil pu = new PageUtil(totalCount, pageNow);
		pu.setTotalPageCount(pu.getTotalPageCount());
		List<User> data = selectAllUserByList(db.query(sql, pu.getStartPos(), pu.getPageSize()));
		PageModel<User> pm = new PageModel<User>(data, pu);
		return pm;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.com.movie.service.UserService#PageSelectPreciseByPhone(int,
	 * java.lang.String) 通过电话精确查询
	 */
	@Override

	public PageModel<User> PageSelectPreciseByPhone(int pageNow, String userphone) {
		int totalCount = userMapper.selectPreciseTotalPage(userphone);// 精确查到的总记录数
		PageUtil pu = new PageUtil(totalCount, pageNow);
		pu.setTotalPageCount(pu.getTotalPageCount());
		List<User> data = userMapper.PagePreciseSelectUser(userphone, pu.getStartPos(), pu.getPageSize());
		PageModel<User> pm = new PageModel<User>(data, pu);

		return pm;
	}

	public User selectByPrimaryKey(int id) {
		User us = userMapper.selectByPrimaryKey(id);
		return us;
	}

}
