package cn.wizzer.modules.back.we.services;

import cn.wizzer.common.base.Service;
import cn.wizzer.modules.back.we.models.We_cart;
import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.log.Log;
import org.nutz.log.Logs;
@IocBean(args = {"refer:dao"})
public class WeCartService extends Service<We_cart> {
	private static final Log log = Logs.get();

    public WeCartService(Dao dao) {
    	super(dao);
    }
}

