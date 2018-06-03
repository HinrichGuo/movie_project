package cn.com.movie.pojo;

/**
 * @title GoodsOrder.java
 *<p>食品订单类
 * @author 李静伟
 * @time 2018年3月29日/下午9:14:00
 */
public class GoodsOrder {
    private Integer id;

    private String gorderCode;

    private Integer userId;

    private Integer goodsId;

    private String buyAccount;

    private String black1;

    private String black2;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getGorderCode() {
        return gorderCode;
    }

    public void setGorderCode(String gorderCode) {
        this.gorderCode = gorderCode == null ? null : gorderCode.trim();
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getGoodsId() {
        return goodsId;
    }

    public GoodsOrder() {
		super();
	}

	public GoodsOrder(Integer id, String gorderCode, Integer userId, Integer goodsId, String buyAccount, String black1,
			String black2) {
		super();
		this.id = id;
		this.gorderCode = gorderCode;
		this.userId = userId;
		this.goodsId = goodsId;
		this.buyAccount = buyAccount;
		this.black1 = black1;
		this.black2 = black2;
	}

	@Override
	public String toString() {
		return "GoodsOrder [id=" + id + ", gorderCode=" + gorderCode + ", userId=" + userId + ", goodsId=" + goodsId
				+ ", buyAccount=" + buyAccount + ", black1=" + black1 + ", black2=" + black2 + "]";
	}

	public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

    public String getBuyAccount() {
        return buyAccount;
    }

    public void setBuyAccount(String buyAccount) {
        this.buyAccount = buyAccount == null ? null : buyAccount.trim();
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
}