package cn.com.movie.pojo;


/**
 * @title  Admin.java
 * <p>
 * <p>
 * @author 盛韬
 * @time 下午10:01:29 /2018年3月30日
 */
public class Admin {

	private Integer id;
	
	private String adminName;
	
	private String adminEmail;
	
	private String adminImg;
	
	private String adminPsw;

	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Admin(Integer id, String adminName, String adminEmail, String adminImg, String adminPsw) {
		super();
		this.id = id;
		this.adminName = adminName;
		this.adminEmail = adminEmail;
		this.adminImg = adminImg;
		this.adminPsw = adminPsw;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public String getAdminEmail() {
		return adminEmail;
	}

	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}

	public String getAdminImg() {
		return adminImg;
	}

	public void setAdminImg(String adminImg) {
		this.adminImg = adminImg;
	}

	public String getAdminPsw() {
		return adminPsw;
	}

	public void setAdminPsw(String adminPsw) {
		this.adminPsw = adminPsw;
	}

	@Override
	public String toString() {
		return "Admin [id=" + id + ", adminName=" + adminName + ", adminEmail=" + adminEmail + ", adminImg=" + adminImg
				+ ", adminPsw=" + adminPsw + "]";
	}
	
	
	
}
