package cn;

import cn.bean.Cart;
import cn.bean.CartItem;
import cn.bean.Food;
import cn.service.FoodService;
import cn.service.impl.FoodServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.print.Book;
import java.io.IOException;
import java.math.BigDecimal;

@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action=request.getParameter("action");
        if(action.equals("addItem")){
            addItem(request,response);
        } else if(action.equals("deleteItem")){
            deleteItem(request,response);
        }

    }
    protected void addItem(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String id = request.getParameter("id");
        String num = request.getParameter("num");
        System.out.println(num);
        FoodService foodService=new FoodServiceImpl();
        Food food = foodService.queryFoodById(Integer.valueOf(id));
        CartItem cartItem=new CartItem(food.getId(),food.getName(),Integer.valueOf(num),food.getPrice(),food.getPrice().multiply(new BigDecimal(Integer.valueOf(num))),food.getImgPath());
        Cart cart=(Cart)request.getSession().getAttribute("cart");
        if(cart==null){
            cart=new Cart();
            request.getSession().setAttribute("cart",cart);
        }
        cart.addItem(cartItem);
        System.out.println(cart);
        if(id.equals("1")){
            response.sendRedirect(request.getContextPath()+"/details.jsp");
        }else if(id.equals("5")){
            response.sendRedirect(request.getContextPath()+"/detailMilk.jsp");
        }

    }
    protected void deleteItem(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String id = request.getParameter("id");
        Cart cart=(Cart)request.getSession().getAttribute("cart");
        if(cart!=null){
            cart.deleteItem(Integer.valueOf(id));
            if(id.equals("1")){
                response.sendRedirect(request.getContextPath()+"/details.jsp");
            }else if(id.equals("5")){
                response.sendRedirect(request.getContextPath()+"/detailMilk.jsp");
            }
        }

    }
}
