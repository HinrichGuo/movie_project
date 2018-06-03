package cn.com.movie.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import cn.com.movie.pojo.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    //查询全部
    List<Map<String,Object>>selectAllUser();
    //分页查询的数据量
    int selectTotalPage();
    //模糊查询的数据量
   int selectLikeTotalPage(@Param(value="userName") String userName);
    //精确查询的数据量
   int selectPreciseTotalPage(@Param(value="userPhone") String userPhone);
    //分页查询
    public List<User> PageSelectAll(@Param(value="start") Integer start,@Param(value="size") Integer size);
    //模糊查询
    List<User> PageLikeSelectUser(User user,@Param(value="start") Integer start,@Param(value="size") Integer size);
    //精确查询
    List<User> PagePreciseSelectUser(@Param(value="userPhone") String userPhone,@Param(value="start") Integer start,@Param(value="size") Integer size);
    int updateStater(Integer id);
}