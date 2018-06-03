package cn.com.movie.dao;


import java.util.List;


import org.apache.ibatis.annotations.Param;

import cn.com.movie.pojo.Goods;

public interface GoodsMapper {
	
	int deleteByPrimaryKey(Integer id);

    int insert(Goods record);

    int insertSelective(Goods record);

    Goods selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Goods record);

    int updateByPrimaryKey(Goods record);
    
    List<Goods> selectAllGoods();
    
    public List<Goods> PageSelectGoods(@Param(value="start") Integer start,@Param(value="size") Integer size); 
    
    int selectCount();
    //ģ����ѯ
    List<Goods> selectLikeGoods(@Param(value="goodsName") String goodsName,@Param(value="start") Integer start,@Param(value="size") Integer size);
    
    int selectLikeCount(@Param(value="goodsName") String goodsName);
    //��ȷ��ѯ
    List<Goods> selectPartGoods(@Param(value="goodsType") String goodsType,@Param(value="start") Integer start,@Param(value="size") Integer size);
    
    int selectPartCount(@Param(value="goodsType") String goodsType);
    
    //��ѯ��������
    List<Goods>  selectGoodsType();
   
}