package cn;

import cn.bean.Food;
import cn.service.FoodService;
import cn.service.impl.FoodServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

@WebServlet("/FoodServlet")
public class FoodServlet extends HttpServlet {
    private FoodService foodService=new FoodServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter("action");
        if(action.equals("list")){
            list(request,response);
            System.out.println(action);
        }
        else if(action.equals("add")){
            add(request,response);
            System.out.println(action);
        } else if(action.equals("delete")){
            delete(request,response);
            System.out.println(action);
        }else if(action.equals("getFood")){
            getFood(request,response);
            System.out.println(action);
        }
        else if(action.equals("update")){
            update(request,response);
            System.out.println(action);
        }else if(action.equals("Salelist")){
            Salelist(request,response);
            System.out.println(action);
        }else if(action.equals("lowtohigh")){
            sortFoodsLow(request,response);
            System.out.println(action);
        }else if(action.equals("hightolow")){
            sortFoodsHigh(request,response);
            System.out.println(action);
        }else if(action.equals("foodsale")){
            sortFoodsSale(request,response);
            System.out.println(action);
        }else if(action.equals("listPic")){
            listPic(request,response);
            System.out.println(action);
        }

    }
    protected void add(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
        String name = request.getParameter("name");
        String brand = request.getParameter("brand");
        String price = request.getParameter("price");
        String sales = request.getParameter("sales");
        String stock = request.getParameter("stock");
        FoodService foodService=new FoodServiceImpl();
        foodService.addFood(new Food(null,name,brand,new BigDecimal(price),Integer.valueOf(sales),Integer.valueOf(stock),null));
        response.sendRedirect(request.getContextPath()+"/FoodServlet?action=list");
    }
    protected void update(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException {
        String id=request.getParameter("id");
        String name = request.getParameter("name");
        String brand = request.getParameter("brand");
        String price = request.getParameter("price");
        String sales = request.getParameter("sales");
        String stock = request.getParameter("stock");
        FoodService foodService = new FoodServiceImpl();
        foodService.updateFood(new Food(Integer.valueOf(id), name, brand, new BigDecimal(price), Integer.valueOf(sales), Integer.valueOf(stock), null));
        response.sendRedirect(request.getContextPath()+"/FoodServlet?action=list");
    }
    protected void getFood(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
        String id = request.getParameter("id");
        FoodService foodService=new FoodServiceImpl();
        Food food=foodService.queryFoodById(Integer.valueOf(id));
        request.setAttribute("food",food);
        request.getRequestDispatcher("/manager/food_edit.jsp").forward(request,response);
    }
    protected void delete(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
        String id = request.getParameter("id");
        FoodService foodService=new FoodServiceImpl();
        foodService.deleteFoodById(Integer.valueOf(id));
        response.sendRedirect(request.getContextPath()+"/FoodServlet?action=list");
    }
    protected void list(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
        List<Food> foods = foodService.queryFoods();
        int size = foods.size();
        request.setAttribute("foods",foods);
        request.setAttribute("foodsNum",size);
        request.getRequestDispatcher("/manager/managerFoodList.jsp").forward(request,response);
    }
    protected void Salelist(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
        List<Food> foods = foodService.queryFoods();
        int size = foods.size();
        request.setAttribute("foods",foods);
        request.setAttribute("foodsNum",size);
        request.getRequestDispatcher("/goodslist.jsp").forward(request,response);
    }
    protected void listPic(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
        List<Food> foods = foodService.queryFoods();
        int size = foods.size();
        request.setAttribute("foods",foods);
        request.setAttribute("foodsNum",size);
        request.getRequestDispatcher("/manager/statistics.jsp").forward(request,response);
    }
    protected void sortFoodsLow(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
        List<Food> foods = foodService.queryFoods();
        int size = foods.size();
        Collections.sort(foods, new Comparator<Food>() {
            @Override
            public int compare(Food o1, Food o2) {

                if((o1.getPrice().compareTo(o2.getPrice())==0)){
                    return o1.getSales() - o2.getSales();
                }
                return o1.getPrice().compareTo(o2.getPrice());
            }
        });
        request.setAttribute("foods",foods);
        request.setAttribute("foodsNum",size);
        request.getRequestDispatcher("/goodslist.jsp").forward(request,response);
    }
    protected void sortFoodsHigh(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
        List<Food> foods = foodService.queryFoods();
        int size = foods.size();
        Collections.sort(foods, new Comparator<Food>() {
            @Override
            public int compare(Food o1, Food o2) {

                if((o1.getPrice().compareTo(o2.getPrice())==0)){
                    return o1.getSales() - o2.getSales();
                }
                return o2.getPrice().compareTo(o1.getPrice());
            }
        });
        request.setAttribute("foods",foods);
        request.setAttribute("foodsNum",size);
        request.getRequestDispatcher("/goodslist.jsp").forward(request,response);
    }
    protected void sortFoodsSale(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
        List<Food> foods = foodService.queryFoods();
        int size = foods.size();
        Collections.sort(foods, new Comparator<Food>() {
            @Override
            public int compare(Food o1, Food o2) {

                if((o1.getSales()==o2.getSales())){
                    return o2.getPrice().compareTo(o1.getPrice());
                }
                return o2.getSales()-o1.getSales();
            }
        });
        request.setAttribute("foods",foods);
        request.setAttribute("foodsNum",size);
        request.getRequestDispatcher("/goodslist.jsp").forward(request,response);
    }
}
