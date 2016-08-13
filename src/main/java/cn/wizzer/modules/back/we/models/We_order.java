package cn.wizzer.modules.back.we.models;

import cn.wizzer.common.base.Model;
import org.nutz.dao.entity.annotation.*;

import java.io.Serializable;
import java.util.List;

/**
 * Created by wizzer on 2016/8/12.
 */
@Table("we_order")
public class We_order extends Model implements Serializable {
    private static final long serialVersionUID = 1L;
    @Column
    @Name
    @ColDefine(type = ColType.VARCHAR, width = 32)
    @Prev(els = {@EL("uuid()")})
    private String id;

    @Column
    @Comment("openid")
    @ColDefine(type = ColType.VARCHAR, width = 32)
    private String openid;

    @Column
    @Comment("微信昵称")
    @ColDefine(type = ColType.VARCHAR, width = 255)
    private String nickname;

    @Column
    @Comment("订单状态")
    @ColDefine(type = ColType.VARCHAR, width = 2)
    private String status;//01 新建订单 02 待发货 03 已发货 04 已取消 05 已完成

    @Column
    @Comment("总金额")
    @ColDefine(type = ColType.INT, width = 5)
    private int money;

    @Column
    @Comment("支付状态")
    @ColDefine(type = ColType.VARCHAR, width = 2)
    private String payStatus;//01 未支付 02 已支付

    @Column
    @Comment("收货人姓名")
    @ColDefine(type = ColType.VARCHAR, width = 20)
    private String recName;

    @Column
    @Comment("手机号码")
    @ColDefine(type = ColType.VARCHAR, width = 20)
    private String recMobile;

    @Column
    @Comment("收货省")
    @ColDefine(type = ColType.VARCHAR, width = 20)
    private String recProvince;

    @Column
    @Comment("收货市")
    @ColDefine(type = ColType.VARCHAR, width = 20)
    private String recCity;

    @Column
    @Comment("收货县区")
    @ColDefine(type = ColType.VARCHAR, width = 20)
    private String recArea;

    @Column
    @Comment("收货地址")
    @ColDefine(type = ColType.VARCHAR, width = 255)
    private String recAddr;

    @Column
    @Comment("发货状态")
    @ColDefine(type = ColType.VARCHAR, width = 2)
    private String shipStatus;

    @Column
    @Comment("发货时间")
    @ColDefine(type = ColType.INT, width = 5)
    private Integer shipAt;

    @Column
    @Comment("发货方式")
    @ColDefine(type = ColType.VARCHAR, width = 2)
    private String shipType;//01 送货上门  02 物流配送

    @Column
    @Comment("物流公司")
    @ColDefine(type = ColType.VARCHAR, width = 20)
    private String shipName;

    @Column
    @Comment("物流单号")
    @ColDefine(type = ColType.VARCHAR, width = 20)
    private String shipNo;

    @Many(target = We_order_goods.class, field = "orderId")
    private List<We_order_goods> goodsList;

    @Many(target = We_order_payment.class, field = "orderId")
    private List<We_order_payment> paymentList;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getOpenid() {
        return openid;
    }

    public void setOpenid(String openid) {
        this.openid = openid;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getMoney() {
        return money;
    }

    public void setMoney(int money) {
        this.money = money;
    }

    public String getPayStatus() {
        return payStatus;
    }

    public void setPayStatus(String payStatus) {
        this.payStatus = payStatus;
    }

    public String getRecName() {
        return recName;
    }

    public void setRecName(String recName) {
        this.recName = recName;
    }

    public String getRecMobile() {
        return recMobile;
    }

    public void setRecMobile(String recMobile) {
        this.recMobile = recMobile;
    }

    public String getRecProvince() {
        return recProvince;
    }

    public void setRecProvince(String recProvince) {
        this.recProvince = recProvince;
    }

    public String getRecCity() {
        return recCity;
    }

    public void setRecCity(String recCity) {
        this.recCity = recCity;
    }

    public String getRecArea() {
        return recArea;
    }

    public void setRecArea(String recArea) {
        this.recArea = recArea;
    }

    public String getRecAddr() {
        return recAddr;
    }

    public void setRecAddr(String recAddr) {
        this.recAddr = recAddr;
    }

    public String getShipStatus() {
        return shipStatus;
    }

    public void setShipStatus(String shipStatus) {
        this.shipStatus = shipStatus;
    }

    public Integer getShipAt() {
        return shipAt;
    }

    public void setShipAt(Integer shipAt) {
        this.shipAt = shipAt;
    }

    public String getShipType() {
        return shipType;
    }

    public void setShipType(String shipType) {
        this.shipType = shipType;
    }

    public String getShipName() {
        return shipName;
    }

    public void setShipName(String shipName) {
        this.shipName = shipName;
    }

    public String getShipNo() {
        return shipNo;
    }

    public void setShipNo(String shipNo) {
        this.shipNo = shipNo;
    }

    public List<We_order_goods> getGoodsList() {
        return goodsList;
    }

    public void setGoodsList(List<We_order_goods> goodsList) {
        this.goodsList = goodsList;
    }

    public List<We_order_payment> getPaymentList() {
        return paymentList;
    }

    public void setPaymentList(List<We_order_payment> paymentList) {
        this.paymentList = paymentList;
    }
}
