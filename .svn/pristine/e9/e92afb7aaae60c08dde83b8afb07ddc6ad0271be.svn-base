package cn.com.movie.dao;

import java.util.List;


import org.apache.ibatis.annotations.Param;

import cn.com.movie.pojo.Film;


/**
 *@title  FilmMapper.java
 *<p>     
 * @author 杨晓鹏
 *@time  2018年4月1日/下午3:37:38
 */

public interface FilmMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Film record);
    
    Film  getFilmOneById(Integer  id);

    int insertSelective(Film record);

    Film selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Film record);

    int updateByPrimaryKey(Film record);
    
    List<Film> selectAllFilm();
  //精确查询的数据量
    int  selectPreciseTotalPage(@Param(value="filmType") String filmType);
    //模糊查询(通过filmName  )
    List<Film> PageselectLikeFilms(@Param(value="filmName") String filmName,@Param(value="start") Integer start,@Param(value="size") Integer size);
    //查询数据的条数
    int selectTotalPage();
    //分页查询
    public List<Film> PageSelectAll(@Param(value="start") Integer start,@Param(value="size") Integer size);
    //精确查询(通过影片类型进行查询)
     List<Film>  PageAccurateSelectFilm(@Param(value="filmType") String filmType,@Param(value="start") Integer start,@Param(value="size") Integer size);
     
     /**
     * @author lry
     * @param record
     * @return List<Film>
     */
    List<Film> selectByFilmPlaytime(Film record);
}