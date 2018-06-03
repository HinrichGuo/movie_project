package cn.com.movie.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.movie.dao.CinemaMapper;
import cn.com.movie.dao.GoodsMapper;
import cn.com.movie.pojo.Cinema;
import cn.com.movie.pojo.Goods;
import cn.com.movie.pojo.PageModel;
import cn.com.movie.utils.PageUtil;

/**
 * @title GoodsServiceImpl.java
 *        <p>
 *        <P>
 * @author 张长伟
 * @time 2018年3月31日 下午5:01:02
 */
@Service
public class GoodsServiceImpl implements GoodsService {

	@Autowired
	private GoodsMapper goodsMapper;
	@Autowired
	private CinemaMapper cinemaMpper;

	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return goodsMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Goods record) {
		if (goodsMapper.insert(record) > 0) {
			return 1;
		}
		return 0;

	}

	@Override
	public List<Cinema> selectAll() {

		return cinemaMpper.selectAll();

	}

	@Override
	public List<Goods> selectAllGoods() {

		return goodsMapper.selectAllGoods();
	}

	@Override
	public PageModel<Goods> selectByPage(int pageNow) {
		int totalCount = goodsMapper.selectCount();
		PageUtil page = new PageUtil(totalCount, pageNow);
		page.setTotalPageCount(page.getTotalPageCount());
		List<Goods> data = goodsMapper.PageSelectGoods(page.getStartPos(), page.getPageSize());
		PageModel<Goods> pageModel = new PageModel<Goods>(data, page);
		return pageModel;
	}

	@Override
	public int selectCount() {

		return goodsMapper.selectCount();
	}

	@Override
	public PageModel<Goods> selectLikeGoods(int pageNow, String goodsName) {
		int totalCount = goodsMapper.selectLikeCount(goodsName);
		PageUtil page = new PageUtil(totalCount, pageNow);
		page.setTotalPageCount(page.getTotalPageCount());
		List<Goods> data = goodsMapper.selectLikeGoods(goodsName, page.getStartPos(), page.getPageSize());

		PageModel<Goods> pageModel = new PageModel<Goods>(data, page);
		return pageModel;
	}

	@Override
	public int selectLikeCount(String goodsName) {

		return goodsMapper.selectLikeCount(goodsName);
	}

	@Override
	public PageModel<Goods> selectPartGoods(int pageNow, String goodsType) {
		int totalCount = goodsMapper.selectPartCount(goodsType);
		PageUtil page = new PageUtil(totalCount, pageNow);
		page.setTotalPageCount(page.getTotalPageCount());
		List<Goods> data = goodsMapper.selectPartGoods(goodsType, page.getStartPos(), page.getPageSize());

		PageModel<Goods> pageModel = new PageModel<Goods>(data, page);
		return pageModel;
	}

	@Override
	public int selectPartCount(String goodsType) {
		// TODO Auto-generated method stub
		return goodsMapper.selectPartCount(goodsType);
	}

	@Override
	public List<Goods> selectGoodsType() {

		return goodsMapper.selectGoodsType();
	}

	@Override
	public Goods selectByPrimaryKey(Integer id) {

		return goodsMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Goods record) {

		if (goodsMapper.updateByPrimaryKeySelective(record) > 0) {
			return 1;
		} else {
			return 0;
		}

	}

}