package cn.dao.impl;

import cn.bean.Admin;
import cn.bean.User;
import cn.dao.AdminDao;


public class AdminDaoImpl extends BaseDao implements AdminDao {
    @Override
    public Admin queryAdminByUsername(String username) {
        String sql = "select `id`,`username`,`password`,`email` from t_admin where username = ?";
        return queryForOne(Admin.class, sql, username);
    }

    @Override
    public Admin queryAdminByAdminnameAndPassword(String username, String password) {
        String sql = "select `id`,`username`,`password`,`email` from t_admin where username = ? and password = ?";
        return queryForOne(Admin.class, sql, username,password);
    }

    @Override
    public int saveAdmin(Admin admin) {
        String sql = "insert into t_admin(`username`,`password`,`email`) values(?,?,?)";
        return update(sql, admin.getUsername(),admin.getPassword(),admin.getEmail());
    }
}
