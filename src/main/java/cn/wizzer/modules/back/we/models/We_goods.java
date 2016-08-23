package cn.wizzer.modules.back.we.models;

import cn.wizzer.common.base.Model;
import org.nutz.dao.entity.annotation.*;

import java.io.Serializable;
import java.util.List;

/**
 * Created by wizzer on 2016/8/12.
 */
@Table("we_goods")
public class We_goods extends Model implements Serializable {
    private static final long serialVersionUID = 1L;
    @Column
    @Name
    @ColDefine(type = ColType.VARCHAR, width = 32)
    @Prev(els = {@EL("uuid()")})
    private String id;

    @Column
    @Comment("分类ID")
    @ColDefine(type = ColType.VARCHAR, width = 32)
    private String classId;

    @Column
    @Comment("商品名称")
    @ColDefine(type = ColType.VARCHAR, width = 255)
    private String name;

    @Column
    @Comment("商品标题")
    @ColDefine(type = ColType.VARCHAR, width = 255)
    private String title;

    @Column
    @Comment("销售价")
    @ColDefine(type = ColType.INT, width = 5)
    private int price;

    @Column
    @Comment("市场价")
    @ColDefine(type = ColType.INT, width = 5)
    private int priceMarket;

    @Column
    @Comment("销售量")
    @ColDefine(type = ColType.INT, width = 5)
    private Integer numSell;

    @Column
    @Comment("库存")
    @ColDefine(type = ColType.INT, width = 5)
    private int stock;

    @Column
    @Comment("冻结库存")
    @ColDefine(type = ColType.INT, width = 5)
    private Integer stockFreeze;

    @Column
    @Comment("起订量")
    @ColDefine(type = ColType.INT, width = 5)
    private int buyMin;

    @Column
    @Comment("限购量")
    @ColDefine(type = ColType.INT, width = 5)
    private int buyMax;

    @Column
    @Comment("计件单位")
    @ColDefine(type = ColType.VARCHAR, width = 20)
    private String unit;

    @Column
    @Comment("商品主图")
    @ColDefine(type = ColType.VARCHAR, width = 255)
    private String picUrl;

    @Column
    @Comment("是否下架")
    @ColDefine(type = ColType.BOOLEAN)
    private boolean disabled;

    @Column
    @Comment("排序字段")
    @Prev(@SQL("SELECT IFNULL(MAX(location),0)+1 FROM we_goods"))
    private Integer location;

    @Many(target = We_goods_image.class, field = "goodsId")
    private List<We_goods_image> imageList;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getClassId() {
        return classId;
    }

    public void setClassId(String classId) {
        this.classId = classId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getPriceMarket() {
        return priceMarket;
    }

    public void setPriceMarket(int priceMarket) {
        this.priceMarket = priceMarket;
    }

    public Integer getNumSell() {
        return numSell;
    }

    public void setNumSell(Integer numSell) {
        this.numSell = numSell;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public Integer getStockFreeze() {
        return stockFreeze;
    }

    public void setStockFreeze(Integer stockFreeze) {
        this.stockFreeze = stockFreeze;
    }

    public int getBuyMin() {
        return buyMin;
    }

    public void setBuyMin(int buyMin) {
        this.buyMin = buyMin;
    }

    public int getBuyMax() {
        return buyMax;
    }

    public void setBuyMax(int buyMax) {
        this.buyMax = buyMax;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public String getPicUrl() {
        return picUrl;
    }

    public void setPicUrl(String picUrl) {
        this.picUrl = picUrl;
    }

    public boolean isDisabled() {
        return disabled;
    }

    public void setDisabled(boolean disabled) {
        this.disabled = disabled;
    }

    public Integer getLocation() {
        return location;
    }

    public void setLocation(Integer location) {
        this.location = location;
    }

    public List<We_goods_image> getImageList() {
        return imageList;
    }

    public void setImageList(List<We_goods_image> imageList) {
        this.imageList = imageList;
    }
}
