package cn.com.movie.dao;

import java.util.List;


import org.apache.ibatis.annotations.Param;

import cn.com.movie.pojo.Film;


/**
 *@title  FilmMapper.java
 *<p>     
 * @author ������
 *@time  2018��4��1��/����3:37:38
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
  //��ȷ��ѯ��������
    int  selectPreciseTotalPage(@Param(value="filmType") String filmType);
    //ģ����ѯ(ͨ��filmName  )
    List<Film> PageselectLikeFilms(@Param(value="filmName") String filmName,@Param(value="start") Integer start,@Param(value="size") Integer size);
    //��ѯ���ݵ�����
    int selectTotalPage();
    //��ҳ��ѯ
    public List<Film> PageSelectAll(@Param(value="start") Integer start,@Param(value="size") Integer size);
    //��ȷ��ѯ(ͨ��ӰƬ���ͽ��в�ѯ)
     List<Film>  PageAccurateSelectFilm(@Param(value="filmType") String filmType,@Param(value="start") Integer start,@Param(value="size") Integer size);
     
     /**
     * @author lry
     * @param record
     * @return List<Film>
     */
    List<Film> selectByFilmPlaytime(Film record);
}