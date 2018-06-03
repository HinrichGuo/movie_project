package cn.com.movie.po;

public class Goods {
    private Integer id;

    private String goodsName;

    private String goodsPrice;

    private String goodsImage;

    private String goodsType;

    private String goodsIntro;

    private Integer cinemaId;

    private String goodsIshave;

    private String goodsBlack1;

    private String goodsBlack;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName == null ? null : goodsName.trim();
    }

    public String getGoodsPrice() {
        return goodsPrice;
    }

    public void setGoodsPrice(String goodsPrice) {
        this.goodsPrice = goodsPrice == null ? null : goodsPrice.trim();
    }

    public String getGoodsImage() {
        return goodsImage;
    }

    public void setGoodsImage(String goodsImage) {
        this.goodsImage = goodsImage == null ? null : goodsImage.trim();
    }

    public String getGoodsType() {
        return goodsType;
    }

    public void setGoodsType(String goodsType) {
        this.goodsType = goodsType == null ? null : goodsType.trim();
    }

    public String getGoodsIntro() {
        return goodsIntro;
    }

    public void setGoodsIntro(String goodsIntro) {
        this.goodsIntro = goodsIntro == null ? null : goodsIntro.trim();
    }

    public Integer getCinemaId() {
        return cinemaId;
    }

    public void setCinemaId(Integer cinemaId) {
        this.cinemaId = cinemaId;
    }

    public String getGoodsIshave() {
        return goodsIshave;
    }

    public void setGoodsIshave(String goodsIshave) {
        this.goodsIshave = goodsIshave == null ? null : goodsIshave.trim();
    }

    public String getGoodsBlack1() {
        return goodsBlack1;
    }

    public void setGoodsBlack1(String goodsBlack1) {
        this.goodsBlack1 = goodsBlack1 == null ? null : goodsBlack1.trim();
    }

    public String getGoodsBlack() {
        return goodsBlack;
    }

    public void setGoodsBlack(String goodsBlack) {
        this.goodsBlack = goodsBlack == null ? null : goodsBlack.trim();
    }
}