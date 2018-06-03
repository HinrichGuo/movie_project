package cn.com.movie.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.movie.dao.CinemaAddressMapper;
import cn.com.movie.dao.CinemaMapper;
import cn.com.movie.pojo.Cinema;
import cn.com.movie.pojo.CinemaAddress;
import cn.com.movie.pojo.PageModel;
import cn.com.movie.utils.PageUtil;

@Service
public class CinemaServiceImp implements CinemaService {
	@Autowired
	private CinemaMapper cinemaMapper;
	@Autowired
	private CinemaAddressMapper CinemaAddressMapper;

	public int insertCinema(Cinema cinema) {
		System.out.println("cimne + " + cinema);
		// TODO Auto-generated method stub
		return cinemaMapper.insert(cinema);
	}

	public int deleteCinema(int id) {
		// TODO Auto-generated method stub
		return cinemaMapper.deleteByPrimaryKey(id);
	}

	public int updateCinema(Cinema cinema) {
		// TODO Auto-generated method stub
		return cinemaMapper.updateByPrimaryKey(cinema);
	}

	public List<Cinema> selectAllCinema() {

		return cinemaMapper.selectAll();
	}

	public Cinema selectOneCinema(int id) {

		return cinemaMapper.selectByPrimaryKey(id);

	}

	@Override
	public int insertCinemaAdress(CinemaAddress cinemaAddress) {

		return CinemaAddressMapper.insert(cinemaAddress);
	}

	@Override
	public Cinema selectCinemaType(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	

	@Override
	public PageModel<Cinema> pageAll(int pageNow) {
		int totalCount=cinemaMapper.selectTotalPage();
		PageUtil pu=new PageUtil(totalCount,pageNow);
		pu.setTotalPageCount(pu.getTotalPageCount());
		List<Cinema> data=cinemaMapper.PageSelectAll(pu.getStartPos(),  pu.getPageSize());
		PageModel<Cinema> pm =new  PageModel<Cinema>(data,pu);
		return pm;
	}

	@Override
	public PageModel<Cinema> pageLikeAll(int pageNow,String cinemaName) {
		int totalCount=cinemaMapper.selectLikeTotalPage();
		PageUtil pu=new PageUtil(totalCount,pageNow);
		pu.setTotalPageCount(pu.getTotalPageCount());
		List<Cinema> data=cinemaMapper.selectLikeCinema(cinemaName,pu.getStartPos(),  pu.getPageSize());
		PageModel<Cinema> pm =new  PageModel<Cinema>(data,pu);
		return pm;
	}

	@Override
	public int updateStater(int id) {
		
		return cinemaMapper.updateStater(id);
	}

	@Override
	public List<CinemaAddress> selectByCinema_id(int cinema_id) {
		// TODO Auto-generated method stub
		return CinemaAddressMapper.selectByCinema_id(cinema_id);
	}
	

}
