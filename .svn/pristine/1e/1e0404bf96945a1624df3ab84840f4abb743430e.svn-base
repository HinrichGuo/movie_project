package cn.com.movie.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.com.movie.pojo.Film;
import cn.com.movie.pojo.PageModel;
import cn.com.movie.pojo.User;

/**
 * @title FilmService.java
 *        <p>
 * @author 杨晓鹏
 * @time 2018年3月29日/下午10:32:03
 */
public interface FilmService {

	// 增加影片信息
	int insertFilm(Film film);

	int deleteFilm(int id);

	Film getFilmOneById(int id);

	int updateFilm(Film film);

	Film selectOneFilm(int id);

	List<Film> selectAllFilm();

	PageModel<Film> PageSelectAllFilms(int pageNow);

	// 精确查询(通过影片类型查询)
	PageModel<Film> PageAccurateSelectFilmByType(int pageNow, String filmType);

	// 模糊查询(通过fileName 查询)
	PageModel<Film> PageAccurateSelectFilmByName(int pageNow, String filmName);

}
