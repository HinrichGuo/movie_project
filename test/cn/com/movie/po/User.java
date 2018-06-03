package cn.com.movie.po;

public class User {
    private Integer id;

    private String userName;

    private String userPsw;

    private String userPhone;

    private String userBlank1;

    private String userBlank2;

    private String userBlank3;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getUserPsw() {
        return userPsw;
    }

    public void setUserPsw(String userPsw) {
        this.userPsw = userPsw == null ? null : userPsw.trim();
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone == null ? null : userPhone.trim();
    }

    public String getUserBlank1() {
        return userBlank1;
    }

    public void setUserBlank1(String userBlank1) {
        this.userBlank1 = userBlank1 == null ? null : userBlank1.trim();
    }

    public String getUserBlank2() {
        return userBlank2;
    }

    public void setUserBlank2(String userBlank2) {
        this.userBlank2 = userBlank2 == null ? null : userBlank2.trim();
    }

    public String getUserBlank3() {
        return userBlank3;
    }

    public void setUserBlank3(String userBlank3) {
        this.userBlank3 = userBlank3 == null ? null : userBlank3.trim();
    }
}