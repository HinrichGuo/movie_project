package cn.com.movie.po;

public class FilmComment {
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