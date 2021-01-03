package cn;

import cn.bean.User;
import cn.service.UserService;
import cn.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/UserLoginServlet")
public class UserLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        UserService userService=new UserServiceImpl();
        System.out.println("进步");
        if(userService.login(new User(null,username,password))!=null){
            System.out.println("登录成功");
            request.getSession().setAttribute("loginUserName",username);
            request.getRequestDispatcher("/index.jsp").forward(request,response);
        }
        else{
            System.out.println("登录失败");
            request.setAttribute("msg","用户名或密码错误");
            request.getRequestDispatcher("/user/login_user.jsp").forward(request,response);
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         this.doPost(request,response);
    }
}
