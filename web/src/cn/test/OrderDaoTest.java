package cn.test;


import cn.bean.Order;
import cn.dao.OrderDao;
import cn.dao.impl.OrderDaoImpl;
import cn.service.OrderService;
import cn.service.impl.OrderServiceImpl;
import org.junit.Test;

import java.math.BigDecimal;
import java.util.Date;



public class OrderDaoTest {
    @Test
    public void queryOrders(){
        OrderService orderService=new OrderServiceImpl();
        System.out.println(orderService.queryOrders());
    }

}