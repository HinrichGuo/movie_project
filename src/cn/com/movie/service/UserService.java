package cn.com.movie.service;

import java.util.List;
import java.util.Map;

import cn.com.movie.pojo.Cinema;
import cn.com.movie.pojo.PageModel;
import cn.com.movie.pojo.User;

public interface UserService {

	int insertUser(Cinema cinema);

	int deleteUser(int id);

	int updateUser(Cinema cinema);

	// 全部查询
	List<Map<String, Object>> selectAllUser();

	// 分页查询
	List<User> selectAllUserByList(List<Map<String, Object>> list);

	PageModel<User> PageSelectAllUser(int pageNow);

	PageModel<User> PageSelectLikeByName(int pageNow, String userName);

	PageModel<User> PageSelectPreciseByPhone(int pageNow, String userphone);

	public User selectByPrimaryKey(int id);

}
