package cn.com.movie.po;

public class Cinema {
    private Integer id;

    private String cinemaName;

    private String cinemaLogo;

    private String cinemaIntro;

    private Integer cinemaaddressId;

    private String cinemaIsvip;

    private String cinemaBlack1;

    private String cinemaBlack2;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCinemaName() {
        return cinemaName;
    }

    public void setCinemaName(String cinemaName) {
        this.cinemaName = cinemaName == null ? null : cinemaName.trim();
    }

    public String getCinemaLogo() {
        return cinemaLogo;
    }

    public void setCinemaLogo(String cinemaLogo) {
        this.cinemaLogo = cinemaLogo == null ? null : cinemaLogo.trim();
    }

    public String getCinemaIntro() {
        return cinemaIntro;
    }

    public void setCinemaIntro(String cinemaIntro) {
        this.cinemaIntro = cinemaIntro == null ? null : cinemaIntro.trim();
    }

    public Integer getCinemaaddressId() {
        return cinemaaddressId;
    }

    public void setCinemaaddressId(Integer cinemaaddressId) {
        this.cinemaaddressId = cinemaaddressId;
    }

    public String getCinemaIsvip() {
        return cinemaIsvip;
    }

    public void setCinemaIsvip(String cinemaIsvip) {
        this.cinemaIsvip = cinemaIsvip == null ? null : cinemaIsvip.trim();
    }

    public String getCinemaBlack1() {
        return cinemaBlack1;
    }

    public void setCinemaBlack1(String cinemaBlack1) {
        this.cinemaBlack1 = cinemaBlack1 == null ? null : cinemaBlack1.trim();
    }

    public String getCinemaBlack2() {
        return cinemaBlack2;
    }

    public void setCinemaBlack2(String cinemaBlack2) {
        this.cinemaBlack2 = cinemaBlack2 == null ? null : cinemaBlack2.trim();
    }
}