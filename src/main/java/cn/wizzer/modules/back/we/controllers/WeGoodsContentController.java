package cn.wizzer.modules.back.we.controllers;

import cn.wizzer.common.annotation.SLog;
import cn.wizzer.common.base.Result;
import cn.wizzer.common.filter.PrivateFilter;
import cn.wizzer.common.page.DataTableColumn;
import cn.wizzer.common.page.DataTableOrder;
import cn.wizzer.modules.back.we.models.We_goods_content;
import cn.wizzer.modules.back.we.services.WeGoodsContentService;
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
@At("/private/we/we_goods_contents")
@Filters({@By(type = PrivateFilter.class)})
public class WeGoodsContentController {
	private static final Log log = Logs.get();
	@Inject
	private WeGoodsContentService weGoodsContentService;

	@At("")
	@Ok("beetl:/private/we/we_goods_contents/index.html")
	@RequiresAuthentication
	public void index() {

	}

	@At
	@Ok("json:full")
	@RequiresAuthentication
	public Object data(@Param("length") int length, @Param("start") int start, @Param("draw") int draw, @Param("::order") List<DataTableOrder> order, @Param("::columns") List<DataTableColumn> columns) {
		Cnd cnd = Cnd.NEW();
    	return weGoodsContentService.data(length, start, draw, order, columns, cnd, null);
    }

    @At
    @Ok("beetl:/private/we/we_goods_contents/add.html")
    @RequiresAuthentication
    public void add() {

    }

    @At
    @Ok("json")
    @SLog(tag = "新建We_goods_content", msg = "")
    public Object addDo(@Param("..") We_goods_content weGoodsContent, HttpServletRequest req) {
		try {
			weGoodsContentService.insert(weGoodsContent);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
    }

    @At("/edit/?")
    @Ok("beetl:/private/we/we_goods_contents/edit.html")
    @RequiresAuthentication
    public Object edit(String id) {
		return weGoodsContentService.fetch(id);
    }

    @At
    @Ok("json")
    @SLog(tag = "修改We_goods_content", msg = "ID:${args[0].id}")
    public Object editDo(@Param("..") We_goods_content weGoodsContent, HttpServletRequest req) {
		try {

			weGoodsContent.setOpAt((int) (System.currentTimeMillis() / 1000));
			weGoodsContentService.updateIgnoreNull(weGoodsContent);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
    }


    @At({"/delete","/delete/?"})
    @Ok("json")
    @SLog(tag = "删除We_goods_content", msg = "ID:${args[2].getAttribute('id')}")
    public Object delete(String id, @Param("ids") String[] ids ,HttpServletRequest req) {
		try {
			if(ids!=null&&ids.length>0){
				weGoodsContentService.delete(ids);
    			req.setAttribute("id", org.apache.shiro.util.StringUtils.toString(ids));
			}else{
				weGoodsContentService.delete(id);
    			req.setAttribute("id", id);
			}
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
    }


    @At("/detail/?")
    @Ok("beetl:/private/we/we_goods_contents/detail.html")
    @RequiresAuthentication
	public Object detail(String id) {
		if (!Strings.isBlank(id)) {
			return weGoodsContentService.fetch(id);

		}
		return null;
    }

}
