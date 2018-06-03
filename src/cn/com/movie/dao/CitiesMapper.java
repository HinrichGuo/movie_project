package cn.com.movie.dao;

import java.util.List;
import java.util.Map;

import cn.com.movie.pojo.Cities;

public interface CitiesMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Cities record);

    int insertSelective(Cities record);

    Cities selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Cities record);

    int updateByPrimaryKey(Cities record);
    List<Map<String,Object>> selectAllCities(Integer id);
}