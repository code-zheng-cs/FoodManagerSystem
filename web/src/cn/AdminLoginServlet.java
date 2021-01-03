package cn;

import cn.bean.Admin;
import cn.bean.User;
import cn.service.AdminService;
import cn.service.UserService;
import cn.service.impl.AdminServiceImpl;
import cn.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        AdminService adminService=new AdminServiceImpl();
        if(adminService.login(new Admin(null,username,password))!=null){
            request.getSession().setAttribute("loginAdminName",username);
            System.out.println("登录成功");
            request.getRequestDispatcher("/manager/managerPage.jsp").forward(request,response);
        }
        else{
            System.out.println("登录失败");
            request.setAttribute("msg","用户名或密码错误");
            request.setAttribute("username",username);
            request.getRequestDispatcher("/login_admin.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           this.doPost(request,response);
    }
}
