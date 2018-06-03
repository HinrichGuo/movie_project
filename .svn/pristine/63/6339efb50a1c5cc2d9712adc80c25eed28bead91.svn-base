package cn.com.movie.service;

import java.util.List;

import cn.com.movie.pojo.Cinema;
import cn.com.movie.pojo.CinemaAddress;
import cn.com.movie.pojo.PageModel;

public interface CinemaService {

	int insertCinema(Cinema cinema);

	int deleteCinema(int id);

	int updateCinema(Cinema cinema);

	List<Cinema> selectAllCinema();
	
	
	
	PageModel<Cinema> pageAll(int paegNow);
	PageModel<Cinema> pageLikeAll(int pageNow,String cinemaName);
    int updateStater(int id);
    List<CinemaAddress> selectByCinema_id(int cinema_id);
	Cinema selectOneCinema(int id);

	int insertCinemaAdress(CinemaAddress cinemaAddress);

	Cinema selectCinemaType(Integer id);
}
