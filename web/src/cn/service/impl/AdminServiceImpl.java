package cn.service.impl;

import cn.bean.Admin;
import cn.dao.AdminDao;
import cn.dao.impl.AdminDaoImpl;
import cn.service.AdminService;

public class AdminServiceImpl implements AdminService {
    private AdminDao adminDao=new AdminDaoImpl();

    @Override
    public void registUser(Admin admin) {
        adminDao.saveAdmin(admin);
    }

    @Override
    public Admin login(Admin admin) {
        return adminDao.queryAdminByAdminnameAndPassword(admin.getUsername(),admin.getPassword());
    }

    @Override
    public boolean existsUsername(String username) {
        if(adminDao.queryAdminByUsername(username)==null) {
            return false;
        }
        return true;
    }
}
