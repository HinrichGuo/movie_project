package cn.com.movie.dao;

import java.util.List;

import cn.com.movie.pojo.CinemaAddress;

public interface CinemaAddressMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CinemaAddress record);

    int insertSelective(CinemaAddress record);

    CinemaAddress selectByPrimaryKey(Integer id);
    List<CinemaAddress>   selectByCinema_id(Integer id);

    int updateByPrimaryKeySelective(CinemaAddress record);

    int updateByPrimaryKey(CinemaAddress record);
}