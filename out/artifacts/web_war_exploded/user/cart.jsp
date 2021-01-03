<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>购物车详情</title>
<link href="../css/shopping.css" rel='stylesheet' type='text/css' />
<link href="../css/shopcart.css" rel='stylesheet' type='text/css' />
  <link rel="start icon" href="../images/resize_png_new.png"  >
</head>

<body>
<!------start header top------->

<!------ end header top-------> 
<!------start header logo------>
  <%@include file="../common/commonHeader.jsp"%>

<!--------end header menu---------> 

<!--------start content1--------->
<div class="cart">
<div class="cart1">
  <div class="cart1-right"><img src="../images/bag1.png" />我的购物车</div>

</div>
<div class="cart2">

<c:forEach items="${sessionScope.cart.items}" var="entry">
  <div class="cart2-left">
    <img src="${entry.value.imgPath}" width="105px" height="142px" />
  </div>
  <div class="cart2-middle">
  <h4> <a href="">${entry.value.name}</a></h4>
  <p>数量：${entry.value.count}|订单编号：5413313+${entry.value.price}*100+324</p>
    <a href="/web/CartServlet?action=deleteItem&id=${entry.value.id}">删除</a>
  <div class="cart2-right">
    <p>优惠：全国满199包邮</p>
    <p>促销：会员享受8折优惠</p>
    <p>价格：<strong>总价￥${entry.value.totalPrice}</strong></p>
    <div class="pay"><a href="">立刻购买&gt;</a></div>
  </div>
</div>
  </c:forEach>
<br />
<div class="cart_info">
  <span class="cart_span">购物车中共有<span class="b_count">${sessionScope.cart.totalCount}</span>件商品</span>
  <span class="cart_span">总金额<span class="b_price">${sessionScope.cart.totalPrice}</span>元</span>
  <span class="cart_span"><a href="/web/OrderServlet?action=createOrder">去结账</a></span>
</div>

  <%@include file="/common/commonTail.jsp"%>

</body>
</html>
