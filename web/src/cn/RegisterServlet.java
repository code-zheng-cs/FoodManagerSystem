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
import java.io.PrintWriter;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password1 = request.getParameter("password1");
        String password2 = request.getParameter("password2");
        String email = request.getParameter("email");
        UserService userService=new UserServiceImpl();
        if(username!=null&&(userService.existsUsername(username))==false){
            if(password1!=null&&password2!=null&&password1.equals(password2)){
                userService.registUser(new User(null,username,password1,email));
                System.out.println("注册成功");
                request.getRequestDispatcher("/user/login_user.jsp").forward(request,response);
            }
            else{
                request.setAttribute("msg","注册失败");
                request.getRequestDispatcher("/register.jsp").forward(request,response);
                System.out.println("两次密码不一致");
            }
        }
        else{
            request.setAttribute("msg","注册失败");
            request.getRequestDispatcher("/register.jsp").forward(request,response);
            System.out.println("用户名重复，注册失败");
        }

    }
}
