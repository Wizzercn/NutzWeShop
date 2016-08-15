package cn.wizzer.modules.back.we.models;

import cn.wizzer.common.base.Model;
import org.nutz.dao.entity.annotation.*;

import java.io.Serializable;

/**
 * Created by wizzer on 2016/8/12.
 */
@Table("we_cart")
public class We_cart extends Model implements Serializable {
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
    @Comment("购买量")
    @ColDefine(type = ColType.INT, width = 5)
    private int num;

    @Column
    @Comment("商品ID")
    @ColDefine(type = ColType.VARCHAR, width = 32)
    private String goodsId;

    @One(target = We_goods.class, field = "goodsId")
    private We_goods goods;

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

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(String goodsId) {
        this.goodsId = goodsId;
    }

    public We_goods getGoods() {
        return goods;
    }

    public void setGoods(We_goods goods) {
        this.goods = goods;
    }
}
