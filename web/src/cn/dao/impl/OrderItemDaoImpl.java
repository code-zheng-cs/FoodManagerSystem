package cn.dao.impl;


import cn.bean.Order;
import cn.bean.OrderItem;
import cn.dao.OrderItemDao;

import java.util.List;

public class OrderItemDaoImpl extends BaseDao implements OrderItemDao {
    @Override
    public int saveOrderItem(OrderItem orderItem) {
        String sql = "insert into t_order_item(`name`,`count`,`price`,`total_price`,`order_id`) values(?,?,?,?,?)";
        return update(sql,orderItem.getName(),orderItem.getCount(),orderItem.getPrice(),orderItem.getTotalPrice(),orderItem.getOrderId());
    }
    @Override
    public List<OrderItem> queryOrderItems() {
        String sql = "select `id` , `name` ,  `count` , `price` , `total_price`,`order_id` from t_order_Item";
        return queryForList(OrderItem.class, sql);
    }
}
