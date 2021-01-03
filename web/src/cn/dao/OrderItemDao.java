package cn.dao;

import cn.bean.Order;
import cn.bean.OrderItem;

import java.util.List;

public interface OrderItemDao {
    public int saveOrderItem(OrderItem orderItem);
    public List<OrderItem> queryOrderItems();
}
