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
    //��ѯȫ��
    List<Map<String,Object>>selectAllUser();
    //��ҳ��ѯ��������
    int selectTotalPage();
    //ģ����ѯ��������
   int selectLikeTotalPage(@Param(value="userName") String userName);
    //��ȷ��ѯ��������
   int selectPreciseTotalPage(@Param(value="userPhone") String userPhone);
    //��ҳ��ѯ
    public List<User> PageSelectAll(@Param(value="start") Integer start,@Param(value="size") Integer size);
    //ģ����ѯ
    List<User> PageLikeSelectUser(User user,@Param(value="start") Integer start,@Param(value="size") Integer size);
    //��ȷ��ѯ
    List<User> PagePreciseSelectUser(@Param(value="userPhone") String userPhone,@Param(value="start") Integer start,@Param(value="size") Integer size);
    int updateStater(Integer id);
}