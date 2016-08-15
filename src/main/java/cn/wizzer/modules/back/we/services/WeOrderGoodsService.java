package cn.wizzer.modules.back.we.services;

import cn.wizzer.common.base.Service;
import cn.wizzer.modules.back.we.models.We_order_goods;
import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.log.Log;
import org.nutz.log.Logs;
@IocBean(args = {"refer:dao"})
public class WeOrderGoodsService extends Service<We_order_goods> {
	private static final Log log = Logs.get();

    public WeOrderGoodsService(Dao dao) {
    	super(dao);
    }
}

