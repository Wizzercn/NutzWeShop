package cn.wizzer.modules.back.we.controllers;

import cn.wizzer.common.annotation.SLog;
import cn.wizzer.common.base.Result;
import cn.wizzer.common.filter.PrivateFilter;
import cn.wizzer.common.page.DataTableColumn;
import cn.wizzer.common.page.DataTableOrder;
import cn.wizzer.modules.back.we.models.We_goods_image;
import cn.wizzer.modules.back.we.services.WeGoodsImageService;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.nutz.dao.Cnd;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Strings;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@IocBean
@At("/private/we/we_goods_images")
@Filters({@By(type = PrivateFilter.class)})
public class WeGoodsImageController {
	private static final Log log = Logs.get();
	@Inject
	private WeGoodsImageService weGoodsImageService;

	@At("")
	@Ok("beetl:/private/we/we_goods_images/index.html")
	@RequiresAuthentication
	public void index() {

	}

	@At
	@Ok("json:full")
	@RequiresAuthentication
	public Object data(@Param("length") int length, @Param("start") int start, @Param("draw") int draw, @Param("::order") List<DataTableOrder> order, @Param("::columns") List<DataTableColumn> columns) {
		Cnd cnd = Cnd.NEW();
    	return weGoodsImageService.data(length, start, draw, order, columns, cnd, null);
    }

    @At
    @Ok("beetl:/private/we/we_goods_images/add.html")
    @RequiresAuthentication
    public void add() {

    }

    @At
    @Ok("json")
    @SLog(tag = "新建We_goods_image", msg = "")
    public Object addDo(@Param("..") We_goods_image weGoodsImage, HttpServletRequest req) {
		try {
			weGoodsImageService.insert(weGoodsImage);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
    }

    @At("/edit/?")
    @Ok("beetl:/private/we/we_goods_images/edit.html")
    @RequiresAuthentication
    public Object edit(String id) {
		return weGoodsImageService.fetch(id);
    }

    @At
    @Ok("json")
    @SLog(tag = "修改We_goods_image", msg = "ID:${args[0].id}")
    public Object editDo(@Param("..") We_goods_image weGoodsImage, HttpServletRequest req) {
		try {

			weGoodsImage.setOpAt((int) (System.currentTimeMillis() / 1000));
			weGoodsImageService.updateIgnoreNull(weGoodsImage);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
    }


    @At({"/delete","/delete/?"})
    @Ok("json")
    @SLog(tag = "删除We_goods_image", msg = "ID:${args[2].getAttribute('id')}")
    public Object delete(String id, @Param("ids") String[] ids ,HttpServletRequest req) {
		try {
			if(ids!=null&&ids.length>0){
				weGoodsImageService.delete(ids);
    			req.setAttribute("id", org.apache.shiro.util.StringUtils.toString(ids));
			}else{
				weGoodsImageService.delete(id);
    			req.setAttribute("id", id);
			}
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
    }


    @At("/detail/?")
    @Ok("beetl:/private/we/we_goods_images/detail.html")
    @RequiresAuthentication
	public Object detail(String id) {
		if (!Strings.isBlank(id)) {
			return weGoodsImageService.fetch(id);

		}
		return null;
    }

}
