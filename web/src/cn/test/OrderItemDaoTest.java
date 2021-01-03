package cn.test;


import cn.bean.OrderItem;
import cn.dao.OrderItemDao;
import cn.dao.impl.OrderItemDaoImpl;
import cn.service.OrderService;
import cn.service.impl.OrderServiceImpl;
import org.junit.Test;
import org.junit.experimental.theories.suppliers.TestedOn;

import java.math.BigDecimal;



public class OrderItemDaoTest {

    @Test
    public void saveOrderItem() {
        OrderItemDao orderItemDao = new OrderItemDaoImpl();

        orderItemDao.saveOrderItem(new OrderItem(null,"java从入门到精通", 1,new BigDecimal(100),new BigDecimal(100),"1234567890"));
        orderItemDao.saveOrderItem(new OrderItem(null,"javaScript从入门到精通", 2,new BigDecimal(100),new BigDecimal(200),"1234567890"));
        orderItemDao.saveOrderItem(new OrderItem(null,"Netty入门", 1,new BigDecimal(100),new BigDecimal(100),"1234567890"));

    }

    @Test
    public void queryOrderItem(){
        OrderService orderService=new OrderServiceImpl();
        System.out.println(orderService.queryOrderItems());
    }
}