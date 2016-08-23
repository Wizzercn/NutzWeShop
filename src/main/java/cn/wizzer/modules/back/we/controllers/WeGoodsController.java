package cn.wizzer.modules.back.we.controllers;

import cn.wizzer.common.annotation.SLog;
import cn.wizzer.common.base.Result;
import cn.wizzer.common.filter.PrivateFilter;
import cn.wizzer.common.page.DataTableColumn;
import cn.wizzer.common.page.DataTableOrder;
import cn.wizzer.modules.back.sys.services.DictService;
import cn.wizzer.modules.back.we.models.We_goods;
import cn.wizzer.modules.back.we.models.We_goods_content;
import cn.wizzer.modules.back.we.models.We_goods_image;
import cn.wizzer.modules.back.we.services.WeGoodsClassService;
import cn.wizzer.modules.back.we.services.WeGoodsContentService;
import cn.wizzer.modules.back.we.services.WeGoodsImageService;
import cn.wizzer.modules.back.we.services.WeGoodsService;
import org.apache.commons.lang.math.NumberUtils;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.nutz.dao.*;
import org.nutz.dao.Chain;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.json.Json;
import org.nutz.json.JsonFormat;
import org.nutz.lang.Strings;
import org.nutz.lang.util.NutMap;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.adaptor.WhaleAdaptor;
import org.nutz.mvc.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@IocBean
@At("/private/we/goods/goods")
@Filters({@By(type = PrivateFilter.class)})
public class WeGoodsController {
    private static final Log log = Logs.get();
    @Inject
    private WeGoodsService weGoodsService;
    @Inject
    private WeGoodsClassService weGoodsClassService;
    @Inject
    private WeGoodsContentService weGoodsContentService;
    @Inject
    private WeGoodsImageService weGoodsImageService;
    @Inject
    private DictService dictService;

    @At({""})
    @Ok("beetl:/private/we/goods/goods/index.html")
    @RequiresAuthentication
    public void index(HttpServletRequest req) {
        req.setAttribute("classList", weGoodsClassService.query(Cnd.NEW()));
    }

    @At
    @Ok("json:full")
    @RequiresAuthentication
    public Object data(@Param("length") int length, @Param("start") int start, @Param("draw") int draw, @Param("::order") List<DataTableOrder> order, @Param("::columns") List<DataTableColumn> columns) {
        Cnd cnd = Cnd.NEW();
        return weGoodsService.data(length, start, draw, order, columns, cnd, null);
    }

    @At
    @Ok("beetl:/private/we/goods/goods/add.html")
    @RequiresAuthentication
    public void add(HttpServletRequest req) {
        req.setAttribute("unit", dictService.query(Cnd.where("path", "like", "0002____").asc("location").asc("path")));
    }

    @At
    @Ok("json")
    @SLog(tag = "添加商品", msg = "商品名称：${args[0].name}")
    @AdaptBy(type = WhaleAdaptor.class)
    //uploadifive上传文件后contentTypy改变,需要用WhaleAdaptor接收参数
    public Object addDo(@Param("..") We_goods weGoods, @Param("note") String note, @Param("images") String images, @Param("we_price") String price, @Param("we_priceMarket") String priceMarket, HttpServletRequest req) {
        try {
            String picUrl = "";
            List<NutMap> list = Json.fromJsonAsList(NutMap.class, images);
            weGoods.setPrice((int) (NumberUtils.toDouble(Strings.sNull(price)) * 100));
            weGoods.setPriceMarket((int) (NumberUtils.toDouble(Strings.sNull(priceMarket)) * 100));
            weGoods.setNumSell(0);
            weGoods.setStockFreeze(0);
            weGoodsService.insert(weGoods);
            We_goods_content content = new We_goods_content();
            content.setNote(note);
            content.setGoodsId(weGoods.getId());
            weGoodsContentService.insert(content);
            for (NutMap map : list) {
                We_goods_image image = new We_goods_image();
                image.setGoodsId(weGoods.getId());
                image.setPicUrl(map.getString("url"));
                if (map.getBoolean("d")) {
                    picUrl = map.getString("url");
                }
                weGoodsImageService.insert(image);
            }
            if(Strings.isBlank(picUrl)&&list.size()>0){//如果没有默认图，则设置第一个为主图
                picUrl=list.get(0).getString("url");
            }
            weGoodsService.update(org.nutz.dao.Chain.make("picUrl", picUrl), Cnd.where("id", "=", weGoods.getId()));
            return Result.success("system.success", weGoods.getId());
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

    @At("/edit/?")
    @Ok("beetl:/private/we/goods/goods/edit.html")
    @RequiresAuthentication
    public Object edit(String id, HttpServletRequest req) {
        We_goods goods = weGoodsService.fetch(id);
        req.setAttribute("unit", dictService.query(Cnd.where("path", "like", "0002____").asc("location").asc("path")));
        if (Strings.isNotBlank(goods.getClassId())) {
            req.setAttribute("class", weGoodsClassService.fetch(goods.getClassId()));
        }
        List<We_goods_image> images = weGoodsImageService.query(Cnd.where("goodsId", "=", goods.getId()).asc("location"));
        List<NutMap> list = new ArrayList<>();
        for (We_goods_image image : images) {
            NutMap map = new NutMap();
            if (image.getPicUrl().equals(goods.getPicUrl())) {
                map.addv("d", true);
            } else {
                map.addv("d", false);
            }
            map.addv("url", image.getPicUrl());
            list.add(map);
        }
        req.setAttribute("note", weGoodsContentService.fetch(Cnd.where("goodsId", "=", id)));
        req.setAttribute("images", images);
        req.setAttribute("jsonImg", Json.toJson(list, JsonFormat.compact()));
        return goods;
    }

    @At
    @Ok("json")
    @SLog(tag = "修改商品", msg = "商品名称:${args[0].name}")
    public Object editDo(@Param("..") We_goods weGoods, @Param("note") String note, @Param("images") String images, @Param("we_price") String price, @Param("we_priceMarket") String priceMarket, HttpServletRequest req) {
        try {
            String picUrl = "";
            List<NutMap> list = Json.fromJsonAsList(NutMap.class, images);
            weGoods.setPrice((int) (NumberUtils.toDouble(Strings.sNull(price)) * 100));
            weGoods.setPriceMarket((int) (NumberUtils.toDouble(Strings.sNull(priceMarket)) * 100));
            weGoods.setOpAt((int) (System.currentTimeMillis() / 1000));
            weGoodsService.updateIgnoreNull(weGoods);
            weGoodsContentService.update(Chain.make("note", note), Cnd.where("goodsId", "=", weGoods.getId()));
            weGoodsImageService.clear(Cnd.where("goodsId", "=", weGoods.getId()));
            for (NutMap map : list) {
                We_goods_image image = new We_goods_image();
                image.setGoodsId(weGoods.getId());
                image.setPicUrl(map.getString("url"));
                if (map.getBoolean("d")) {
                    picUrl = map.getString("url");
                }
                weGoodsImageService.insert(image);
            }
            if(Strings.isBlank(picUrl)&&list.size()>0){//如果没有默认图，则设置第一个为主图
                picUrl=list.get(0).getString("url");
            }
            weGoodsService.update(org.nutz.dao.Chain.make("picUrl", picUrl), Cnd.where("id", "=", weGoods.getId()));
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }


    @At({"/delete", "/delete/?"})
    @Ok("json")
    @SLog(tag = "删除商品", msg = "ID:${args[2].getAttribute('id')}")
    public Object delete(String id, @Param("ids") String[] ids, HttpServletRequest req) {
        try {
            if (ids != null && ids.length > 0) {
                weGoodsService.delete(ids);
                req.setAttribute("id", org.apache.shiro.util.StringUtils.toString(ids));
            } else {
                weGoodsService.delete(id);
                req.setAttribute("id", id);
            }
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }


    @At("/enable/?")
    @Ok("json")
    @SLog(tag = "上架商品", msg = "商品名称:${args[1].getAttribute('name')}")
    public Object enable(String id, HttpServletRequest req) {
        try {
            req.setAttribute("name", weGoodsService.fetch(id).getName());
            weGoodsService.update(org.nutz.dao.Chain.make("disabled", false), Cnd.where("id", "=", id));
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

    @At("/disable/?")
    @Ok("json")
    @SLog(tag = "下架商品", msg = "商品名称:${args[1].getAttribute('name')}")
    public Object disable(String id, HttpServletRequest req) {
        try {
            req.setAttribute("name", weGoodsService.fetch(id).getName());
            weGoodsService.update(org.nutz.dao.Chain.make("disabled", true), Cnd.where("id", "=", id));
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

}
