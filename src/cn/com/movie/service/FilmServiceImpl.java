package cn.com.movie.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.movie.dao.FilmMapper;
import cn.com.movie.pojo.Film;
import cn.com.movie.pojo.PageModel;
import cn.com.movie.pojo.User;
import cn.com.movie.utils.PageUtil;

/**
 * @title FilmServiceImpl.java
 *        <p>
 *        ӰƬʵ����
 * @author ������
 * @time 2018��3��30��/����9:54:37
 */
@Service
public class FilmServiceImpl implements FilmService {

	@Autowired
	private FilmMapper filmMapper;

	public int deleteFilm(int id) {
		// TODO Auto-generated method stub

		return filmMapper.deleteByPrimaryKey(id);

	}
	// ��ѯ����ӰƬ��Ϣ

	@Override
	public List<Film> selectAllFilm() {
		List<Film> data = filmMapper.selectAllFilm();
		return data;
	}

	@Override
	public int insertFilm(Film film) {
		// TODO Auto-generated method stub
		System.out.println("�������ӰƬ����" + film);
		return filmMapper.insert(film);
	}

	@Override

	public int updateFilm(Film film) {
		// TODO Auto-generated method stub

		return filmMapper.updateByPrimaryKey(film);
	}

	@Override
	public Film selectOneFilm(int id) {

		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PageModel<Film> PageSelectAllFilms(int pageNow) {
		int totalCount = filmMapper.selectTotalPage();// �鵽�ܼ�¼��
		PageUtil pu = new PageUtil(totalCount, pageNow);
		pu.setTotalPageCount(pu.getTotalPageCount());
		List<Film> data = filmMapper.PageSelectAll(pu.getStartPos(), pu.getPageSize());
		PageModel<Film> pm = new PageModel<Film>(data, pu);

		return pm;

	}
	// ͨ��filmType ��ȷ��ѯ

	@Override
	public PageModel<Film> PageAccurateSelectFilmByType(int pageNow, String filmType) {
		int totalCount = filmMapper.selectPreciseTotalPage(filmType);// ��ȷ�鵽���ܼ�¼��
		PageUtil pu = new PageUtil(totalCount, pageNow);
		pu.setTotalPageCount(pu.getTotalPageCount());
		List<Film> data = filmMapper.PageAccurateSelectFilm(filmType, pu.getStartPos(), pu.getPageSize());
		PageModel<Film> pm = new PageModel<Film>(data, pu);
		return pm;

	}

	// ͨ�� filmName ģ����ѯ
	@Override
	public PageModel<Film> PageAccurateSelectFilmByName(int pageNow, String filmName) {
		int totalCount = filmMapper.selectPreciseTotalPage(filmName);// ��ȷ�鵽���ܼ�¼��
		PageUtil pu = new PageUtil(totalCount, pageNow);
		pu.setTotalPageCount(pu.getTotalPageCount());
		List<Film> data = filmMapper.PageselectLikeFilms(filmName, pu.getStartPos(), pu.getPageSize());
		PageModel<Film> pm = new PageModel<Film>(data, pu);
		return pm;

	}

	@Override
	public Film getFilmOneById(int id) {
		// TODO Auto-generated method stub
		return filmMapper.getFilmOneById(id);
	}

	/*
	 * @Override public List<Film> mapTOFilm(List<Map<String, Object>> data) {
	 * List<Film> list=new ArrayList<>();
	 * 
	 * Film film = null; for (Map<String, Object> map : data) { film = new Film(
	 * Integer.parseInt(map.getOrDefault("id", "") == null ? "" :
	 * map.getOrDefault("id", "").toString()), map.getOrDefault("film_name", "") ==
	 * null ? "" : map.getOrDefault("film_name", "").toString(),
	 * map.getOrDefault("film_director", "") == null ? "" :
	 * map.getOrDefault("film_director", "").toString(),
	 * map.getOrDefault("film_actor", "") == null ? "" :
	 * map.getOrDefault("film_actor", "").toString(),
	 * map.getOrDefault("film_country", "") == null ? "" :
	 * map.getOrDefault("film_country", "").toString(),
	 * map.getOrDefault("film_intro", "") == null ? "" :
	 * map.getOrDefault("film_intro", "").toString(),
	 * map.getOrDefault("film_poster", "") == null ? "" :
	 * map.getOrDefault("film_poster", "").toString(),
	 * map.getOrDefault("film_premovie", "") == null ? "":
	 * map.getOrDefault("film_premovie", "").toString(),
	 * map.getOrDefault("film_playtime", "") == null ? "":
	 * map.getOrDefault("film_playtime", "").toString(),
	 * map.getOrDefault("film_timelong", "") == null ? "":
	 * map.getOrDefault("film_timelong", "").toString(),
	 * Integer.parseInt(map.getOrDefault("playtype_id", "") == null ? "" :
	 * map.getOrDefault("playtype_id", "").toString()),
	 * map.getOrDefault("film_type", "") == null ? "" :
	 * map.getOrDefault("film_type", "").toString(), map.getOrDefault("black", "")
	 * == null ? "" : map.getOrDefault("black", "").toString()); list.add(film); }
	 */

	/*
	 * // return list; // // }
	 */

}
