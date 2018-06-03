package cn.com.movie.dao;

import java.util.List;

import cn.com.movie.pojo.FilmOrder;

public interface FilmOrderMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(FilmOrder record);

    int insertSelective(FilmOrder record);

    FilmOrder selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(FilmOrder record);

    int updateByPrimaryKey(FilmOrder record);
    
    List<FilmOrder> selectTicketAccount(FilmOrder record);//�ĸ���Ӱ��Ʊ��� 
    
    List<FilmOrder> selectCinemaTicketAccount(FilmOrder record);//��ӰԺ����Ʊ����
}