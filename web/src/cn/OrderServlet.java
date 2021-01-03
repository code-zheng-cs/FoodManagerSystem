package cn;

import cn.bean.Cart;
import cn.bean.User;
import cn.service.OrderService;
import cn.service.impl.OrderServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {
    private OrderService orderService = new OrderServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         this.doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          String action=request.getParameter("action");
          if(action.equals("createOrder")){
              createOrder(request,response);
          }
    }
    protected void createOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cart cart=(Cart)request.getSession().getAttribute("cart");
        String loginUser=(String)request.getSession().getAttribute("loginname");
        String orderId = orderService.createOrder(cart, loginUser);
        request.setAttribute("orderId",orderId);
        request.getRequestDispatcher("/user/pay.jsp").forward(request,response);
    }
    protected void showOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
