package cn.com.movie.dao;

import java.util.List;
import java.util.Map;

import cn.com.movie.pojo.Areas;

public interface AreasMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Areas record);

    int insertSelective(Areas record);

    Areas selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Areas record);

    int updateByPrimaryKey(Areas record);
    
    List<Map<String,Object>> selectAllAreas(Integer id);
}