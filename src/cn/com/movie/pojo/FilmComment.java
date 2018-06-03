package cn.com.movie.pojo;

/**
 * @title FilmComment.java
 *<p>电影评论类
 * @author 李静伟
 * @time 2018年3月29日/下午9:10:18
 */
public class FilmComment {
    @Override
	public String toString() {
		return "FilmComment [id=" + id + ", filmId=" + filmId + ", userId=" + userId + ", comment=" + comment
				+ ", filmStar=" + filmStar + ", ishide=" + ishide + ", black=" + black + "]";
	}

	private Integer id;

    private Integer filmId;

    private Integer userId;

    private String comment;

    private String filmStar;

    private String ishide;

    private String black;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getFilmId() {
        return filmId;
    }

    public FilmComment() {
		super();
	}

	public FilmComment(Integer id, Integer filmId, Integer userId, String comment, String filmStar, String ishide,
			String black) {
		super();
		this.id = id;
		this.filmId = filmId;
		this.userId = userId;
		this.comment = comment;
		this.filmStar = filmStar;
		this.ishide = ishide;
		this.black = black;
	}

	public void setFilmId(Integer filmId) {
        this.filmId = filmId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment == null ? null : comment.trim();
    }

    public String getFilmStar() {
        return filmStar;
    }

    public void setFilmStar(String filmStar) {
        this.filmStar = filmStar == null ? null : filmStar.trim();
    }

    public String getIshide() {
        return ishide;
    }

    public void setIshide(String ishide) {
        this.ishide = ishide == null ? null : ishide.trim();
    }

    public String getBlack() {
        return black;
    }

    public void setBlack(String black) {
        this.black = black == null ? null : black.trim();
    }
}