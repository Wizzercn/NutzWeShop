package cn.wizzer.modules.back.we.services;

import cn.wizzer.common.base.Service;
import cn.wizzer.modules.back.we.models.We_goods_class;
import org.nutz.aop.interceptor.ioc.TransAop;
import org.nutz.dao.Chain;
import org.nutz.dao.Cnd;
import org.nutz.dao.Dao;
import org.nutz.dao.Sqls;
import org.nutz.ioc.aop.Aop;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Strings;

/**
 * Created by wizzer on 2016/6/24.
 */
@IocBean(args = {"refer:dao"})
public class WeGoodsClassService extends Service<We_goods_class> {
    public WeGoodsClassService(Dao dao) {
        super(dao);
    }

    /**
     * 新增单位
     *
     * @param w
     * @param pid
     */
    @Aop(TransAop.READ_COMMITTED)
    public void save(We_goods_class w, String pid) {
        String path = "";
        if (!Strings.isEmpty(pid)) {
            We_goods_class pp = this.fetch(pid);
            path = pp.getPath();
        }
        w.setPath(getSubPath("we_goods_class", "path", path));
        w.setParentId(pid);
        dao().insert(w);
        if (!Strings.isEmpty(pid)) {
            this.update(Chain.make("hasChildren", true), Cnd.where("id", "=", pid));
        }
    }

    /**
     * 级联删除单位
     *
     * @param w
     */
    @Aop(TransAop.READ_COMMITTED)
    public void deleteAndChild(We_goods_class w) {
        dao().execute(Sqls.create("delete from we_goods_class where path like @path").setParam("path", w.getPath() + "%"));
        if (!Strings.isEmpty(w.getParentId())) {
            int count = count(Cnd.where("parentId", "=", w.getParentId()));
            if (count < 1) {
                dao().execute(Sqls.create("update we_goods_class set hasChildren=false where id=@pid").setParam("pid", w.getParentId()));
            }
        }
    }
}
