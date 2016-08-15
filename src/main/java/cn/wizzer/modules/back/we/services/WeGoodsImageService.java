package cn.wizzer.modules.back.we.services;

import cn.wizzer.common.base.Service;
import cn.wizzer.modules.back.we.models.We_goods_image;
import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.log.Log;
import org.nutz.log.Logs;
@IocBean(args = {"refer:dao"})
public class WeGoodsImageService extends Service<We_goods_image> {
	private static final Log log = Logs.get();

    public WeGoodsImageService(Dao dao) {
    	super(dao);
    }
}

