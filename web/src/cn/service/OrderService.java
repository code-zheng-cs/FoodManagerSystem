package cn.service;


import cn.bean.Cart;
import cn.bean.Order;
import cn.bean.OrderItem;

import java.util.List;

public interface OrderService {
    public String createOrder(Cart cart, String userName);
    public List<Order> queryOrders();
    public List<OrderItem> queryOrderItems();
}
