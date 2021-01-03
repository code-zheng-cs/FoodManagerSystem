package cn.test;

import cn.bean.User;
import cn.dao.UserDao;
import cn.dao.impl.UserDaoImpl;
import cn.utils.JdbcUtils;
import org.junit.Test;

public class JdbcUtilsTest {

    @Test
    public void testJdbc(){
        System.out.println(JdbcUtils.getConnection());
    }
    @Test
    public void queryUserByUsername(){
        UserDao userDao=new UserDaoImpl();
        System.out.println(userDao.queryUserByUsername("user"));
    }
    @Test
    public void saveUser(){
            UserDao userDao=new UserDaoImpl();
        System.out.println(userDao.saveUser(new User(null,"user","user","user@163.com")));
    }
}
