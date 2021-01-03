package cn.service;

import cn.bean.Admin;



public interface AdminService {
    /**
     * 注册用户
     * @param admin
     */
    public void registUser(Admin admin);

    /**
     * 登录
     * @param admin
     * @return 如果返回null，说明登录失败，返回有值，是登录成功
     */
    public Admin login(Admin admin);

    /**
     * 检查 用户名是否可用
     * @param username
     * @return 返回true表示用户名已存在，返回false表示用户名可用
     */
    public boolean existsUsername(String username);
}
