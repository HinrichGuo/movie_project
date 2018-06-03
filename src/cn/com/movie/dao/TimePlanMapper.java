package cn.com.movie.dao;

import cn.com.movie.pojo.TimePlan;

public interface TimePlanMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TimePlan record);

    int insertSelective(TimePlan record);

    TimePlan selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TimePlan record);

    int updateByPrimaryKey(TimePlan record);
}