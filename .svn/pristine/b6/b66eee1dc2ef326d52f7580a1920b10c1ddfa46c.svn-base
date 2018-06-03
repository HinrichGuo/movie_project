package cn.com.movie.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.com.movie.pojo.Cinema;


public interface CinemaMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Cinema record);

    int insertSelective(Cinema record);

    Cinema selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Cinema record);

    int updateByPrimaryKey(Cinema record);
    
    List<Cinema> selectAll();
    //分页查询总数据量
   int selectTotalPage();
   //分页查询
   List<Cinema> PageSelectAll(@Param("start") Integer start,@Param("size") Integer size);
   //假删除
   int updateStater(int id);
   //模糊查询数据量
  int selectLikeTotalPage();
  //模糊查询
  List<Cinema> selectLikeCinema(@Param("cinemaName") String cinemaName,@Param("start") Integer start,@Param("size") Integer size);
    Cinema selectCinemaType(Integer id);
		
}