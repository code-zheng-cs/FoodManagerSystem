package cn.dao;

import cn.bean.Food;
import cn.bean.Order;

import java.util.List;

public interface OrderDao {
    public int saveOrder(Order order);
    public List<Order> queryOrders();
}
