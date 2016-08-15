package cn.wizzer.modules.back.we.services;

import cn.wizzer.common.base.Service;
import cn.wizzer.modules.back.we.models.We_goods_content;
import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.log.Log;
import org.nutz.log.Logs;
@IocBean(args = {"refer:dao"})
public class WeGoodsContentService extends Service<We_goods_content> {
	private static final Log log = Logs.get();

    public WeGoodsContentService(Dao dao) {
    	super(dao);
    }
}

