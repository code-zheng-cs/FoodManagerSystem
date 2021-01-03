package cn.service.impl;



import cn.bean.*;
import cn.dao.FoodDao;
import cn.dao.OrderDao;
import cn.dao.OrderItemDao;
import cn.dao.impl.FoodDaoImpl;
import cn.dao.impl.OrderDaoImpl;
import cn.dao.impl.OrderItemDaoImpl;
import cn.service.OrderService;

import java.awt.print.Book;
import java.util.Date;
import java.util.List;
import java.util.Map;

public class OrderServiceImpl implements OrderService {

    private OrderDao orderDao = new OrderDaoImpl();
    private OrderItemDao orderItemDao = new OrderItemDaoImpl();
    private FoodDao foodDao = new FoodDaoImpl();

    @Override
    public String createOrder(Cart cart, String userName) {
        // 订单号===唯一性
        String orderId = System.currentTimeMillis()+"13249";
        // 创建一个订单对象
        Order order = new Order(orderId,new Date(),cart.getTotalPrice(), 0,userName);
        // 保存订单
        orderDao.saveOrder(order);

        // 遍历购物车中每一个商品项转换成为订单项保存到数据库
        for (Map.Entry<Integer, CartItem>entry : cart.getItems().entrySet()){
            // 获取每一个购物车中的商品项
            CartItem cartItem = entry.getValue();
            // 转换为每一个订单项
            OrderItem orderItem = new OrderItem(null,cartItem.getName(),cartItem.getCount(),cartItem.getPrice(),cartItem.getTotalPrice(), orderId);
            // 保存订单项到数据库
            orderItemDao.saveOrderItem(orderItem);

            // 更新库存和销量
            Food food = foodDao.queryFoodById(cartItem.getId());
            food.setSales( food.getSales() + cartItem.getCount() );
            food.setStock( food.getStock() - cartItem.getCount() );
            foodDao.updateFood(food);

        }
        // 清空购物车
        cart.clear();

        return orderId;
    }
    @Override
    public List<Order> queryOrders() {

        return orderDao.queryOrders();
    }
    @Override
    public List<OrderItem> queryOrderItems(){
        return orderItemDao.queryOrderItems();
    }
}
