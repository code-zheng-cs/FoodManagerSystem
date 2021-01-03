package cn.dao.impl;

import cn.bean.Food;
import cn.bean.Order;
import cn.dao.OrderDao;

import java.util.List;

public class OrderDaoImpl extends BaseDao implements OrderDao {
    @Override
    public int saveOrder(Order order) {
        String sql = "insert into t_order(`order_id`,`create_time`,`price`,`status`,`username`) values(?,?,?,?,?)";

        return update(sql,order.getOrderId(),order.getCreateTime(),order.getPrice(),order.getStatus(),order.getUserName());
    }
    @Override
    public List<Order> queryOrders(){
        String sql = "select `order_id` , `create_time` ,  `price` , `status` , `username` from t_order";
        return queryForList(Order.class, sql);
    }
}
