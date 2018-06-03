package cn.com.movie.po;

public class CinemaAddress {
    private Integer id;

    private Integer cinemaId;

    private String address;

    private String cinemaPhone;

    private String black1;

    private String black2;

    private String black3;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCinemaId() {
        return cinemaId;
    }

    public void setCinemaId(Integer cinemaId) {
        this.cinemaId = cinemaId;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getCinemaPhone() {
        return cinemaPhone;
    }

    public void setCinemaPhone(String cinemaPhone) {
        this.cinemaPhone = cinemaPhone == null ? null : cinemaPhone.trim();
    }

    public String getBlack1() {
        return black1;
    }

    public void setBlack1(String black1) {
        this.black1 = black1 == null ? null : black1.trim();
    }

    public String getBlack2() {
        return black2;
    }

    public void setBlack2(String black2) {
        this.black2 = black2 == null ? null : black2.trim();
    }

    public String getBlack3() {
        return black3;
    }

    public void setBlack3(String black3) {
        this.black3 = black3 == null ? null : black3.trim();
    }
}