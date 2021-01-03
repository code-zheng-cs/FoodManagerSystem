package cn.test;

import cn.bean.User;
import cn.service.UserService;
import cn.service.impl.UserServiceImpl;
import org.junit.Test;

public class ServiceTest {
    @Test
    public void login(){
        UserService userService=new UserServiceImpl();
        if(userService.login(new User(null,"user","user"))!=null){
            System.out.println("登录成功");
        }
        else{
            System.out.println("登录失败");
        }

    }
}
