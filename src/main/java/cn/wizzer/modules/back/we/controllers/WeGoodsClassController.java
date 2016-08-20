package cn.wizzer.modules.back.we.controllers;

import cn.wizzer.common.annotation.SLog;
import cn.wizzer.common.base.Result;
import cn.wizzer.common.filter.PrivateFilter;
import cn.wizzer.modules.back.we.models.We_goods_class;
import cn.wizzer.modules.back.we.services.WeGoodsClassService;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.nutz.dao.Cnd;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Strings;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by wizzer on 2016/6/24.
 */
@IocBean
@At("/private/we/goods/class")
@Filters({@By(type = PrivateFilter.class)})
public class WeGoodsClassController {
    private static final Log log = Logs.get();
    @Inject
    WeGoodsClassService weGoodsClassService;

    @At("")
    @Ok("beetl:/private/we/goods/class/index.html")
    @RequiresAuthentication
    public Object index() {
        return weGoodsClassService.query(Cnd.where("parentId", "=", "").asc("path"));
    }

    @At
    @Ok("beetl:/private/we/goods/class/add.html")
    @RequiresAuthentication
    public Object add(@Param("pid") String pid) {
        return Strings.isBlank(pid) ? null : weGoodsClassService.fetch(pid);
    }

    @At
    @Ok("json")
    @SLog(tag = "新建商品分类", msg = "分类名称:${args[0].name}")
    public Object addDo(@Param("..") We_goods_class w, @Param("parentId") String parentId, HttpServletRequest req) {
        try {
            weGoodsClassService.save(w, parentId);
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

    @At("/child/?")
    @Ok("beetl:/private/we/goods/class/child.html")
    @RequiresAuthentication
    public Object child(String id) {
        return weGoodsClassService.query(Cnd.where("parentId", "=", id).asc("path"));
    }

    @At("/edit/?")
    @Ok("beetl:/private/we/goods/class/edit.html")
    @RequiresAuthentication
    public Object edit(String id, HttpServletRequest req) {
        We_goods_class w = weGoodsClassService.fetch(id);
        if (w != null) {
            req.setAttribute("parentUnit", weGoodsClassService.fetch(w.getParentId()));
        }
        return w;
    }

    @At
    @Ok("json")
    @SLog(tag = "编辑商品分类", msg = "分类名称:${args[0].name}")
    public Object editDo(@Param("..") We_goods_class w, @Param("parentId") String parentId, HttpServletRequest req) {
        try {
            w.setOpBy(Strings.sNull(req.getAttribute("uid")));
            w.setOpAt((int) (System.currentTimeMillis() / 1000));
            weGoodsClassService.updateIgnoreNull(w);
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

    @At("/delete/?")
    @Ok("json")
    @SLog(tag = "删除商品分类", msg = "分类名称:${args[1].getAttribute('name')}")
    public Object delete(String id, HttpServletRequest req) {
        try {
            We_goods_class w = weGoodsClassService.fetch(id);
            req.setAttribute("name", w.getName());
            weGoodsClassService.deleteAndChild(w);
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

    @At
    @Ok("json")
    @RequiresAuthentication
    public Object tree(@Param("pid") String pid) {
        List<We_goods_class> list = weGoodsClassService.query(Cnd.where("parentId", "=", Strings.sBlank(pid)).asc("path"));
        List<Map<String, Object>> tree = new ArrayList<>();
        for (We_goods_class w : list) {
            Map<String, Object> obj = new HashMap<>();
            obj.put("id", w.getId());
            obj.put("text", w.getName());
            obj.put("children", w.isHasChildren());
            tree.add(obj);
        }
        return tree;
    }
}
