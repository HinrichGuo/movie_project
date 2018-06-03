package cn.com.movie.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.movie.dao.FilmOrderMapper;
import cn.com.movie.pojo.FilmOrder;

@Service
public class FilmOrdersImpl implements FilmOrders {

	@Autowired
	private FilmOrderMapper filmOrderMapper;
	@Override
	public List<FilmOrder> tongJi_1(FilmOrder filmOrder) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<FilmOrder> tongJi_2(FilmOrder filmOrder) {
		System.out.println("2，FilmOrdersImpl中的tongJi_2方法");
		List<FilmOrder> film=filmOrderMapper.selectCinemaTicketAccount(filmOrder);
		System.out.println("3，用到filmOrderMapper了");
		System.out.println("FilmOrdersImpl中tongJi_2方法："+film);
		return film;
	}

}
