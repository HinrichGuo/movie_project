package cn.com.movie.pojo;
/**
 * @title CinemaAddress.java
 *<p>影院di
 * @author 李静伟
 * @time 2018年3月29日/下午8:57:45
 */
public class CinemaAddress {
    private Integer id;

    private Integer cinemaId;

    private String cinemaAdress;

    private String cinemaPhone;
    private String cinemaProvinces;
    private String cinemaCities;
    private String cinemaAreas;

    private String black1;

    private String black2;

	public CinemaAddress(Integer id, Integer cinemaId, String cinemaAdress, String cinemaPhone, String cinemaProvinces,
			String cinemaCities, String cinemaAreas, String black1, String black2) {
		super();
		this.id = id;
		this.cinemaId = cinemaId;
		this.cinemaAdress = cinemaAdress;
		this.cinemaPhone = cinemaPhone;
		this.cinemaProvinces = cinemaProvinces;
		this.cinemaCities = cinemaCities;
		this.cinemaAreas = cinemaAreas;
		this.black1 = black1;
		this.black2 = black2;
	}
	

	public CinemaAddress() {
		super();
	}


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

	public String getCinemaAdress() {
		return cinemaAdress;
	}

	public void setCinemaAdress(String cinemaAdress) {
		this.cinemaAdress = cinemaAdress == null ? null : cinemaAdress.trim();
	}

	public String getCinemaPhone() {
		return cinemaPhone;
	}

	public void setCinemaPhone(String cinemaPhone) {
		this.cinemaPhone = cinemaPhone == null ? null : cinemaPhone.trim();
	}

	public String getCinemaProvinces() {
		return cinemaProvinces;
	}

	public void setCinemaProvinces(String cinemaProvinces) {
		this.cinemaProvinces = cinemaProvinces == null ? null : cinemaProvinces.trim();
	}

	public String getCinemaCities() {
		return cinemaCities;
	}

	public void setCinemaCities(String cinemaCities) {
		this.cinemaCities = cinemaCities == null ? null : cinemaCities.trim();
	}

	public String getCinemaAreas() {
		return cinemaAreas;
	}

	public void setCinemaAreas(String cinemaAreas) {
		this.cinemaAreas = cinemaAreas == null ? null : cinemaAreas.trim();
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


	@Override
	public String toString() {
		return "CinemaAddress [id=" + id + ", cinemaId=" + cinemaId + ", cinemaAdress=" + cinemaAdress
				+ ", cinemaPhone=" + cinemaPhone + ", cinemaProvinces=" + cinemaProvinces + ", cinemaCities="
				+ cinemaCities + ", cinemaAreas=" + cinemaAreas + ", black1=" + black1 + ", black2=" + black2 + "]";
	}

}