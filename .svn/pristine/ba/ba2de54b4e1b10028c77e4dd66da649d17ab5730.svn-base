package cn.com.movie.service;

import java.util.List;

import cn.com.movie.pojo.Cinema;
import cn.com.movie.pojo.Goods;
import cn.com.movie.pojo.PageModel;

public interface GoodsService {

	int deleteByPrimaryKey(Integer id);

	Goods selectByPrimaryKey(Integer id);

	int insert(Goods record);

	List<Cinema> selectAll();

	List<Goods> selectAllGoods();

	PageModel<Goods> selectByPage(int pageNow);

	int selectCount();

	PageModel<Goods> selectLikeGoods(int pageNow, String goodsName);

	int selectLikeCount(String goodsName);

	PageModel<Goods> selectPartGoods(int pageNow, String goodsType);

	int selectPartCount(String goodsType);

	List<Goods> selectGoodsType();

	int updateByPrimaryKeySelective(Goods record);

}
