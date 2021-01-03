package cn.bean;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 订单
 */
public class Order {
    private String orderId;
    private Date createTime;
    private BigDecimal price;
    // 0未发货，1已发货，2表示已签收
    private Integer status = 0;
    private String userName;

    public Order(String orderId, Date createTime, BigDecimal price, Integer status, String userName) {
        this.orderId = orderId;
        this.createTime = createTime;
        this.price = price;
        this.status = status;
        this.userName = userName;
    }

    public Order() {
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }


    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    @Override
    public String toString() {
        return "Order{" +
                "orderId='" + orderId + '\'' +
                ", createTime=" + createTime +
                ", price=" + price +
                ", status=" + status +
                ", userName='" + userName + '\'' +
                '}';
    }
}
