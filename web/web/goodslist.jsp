<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>商品列表</title>
<link href="css/shopping.css" rel='stylesheet' type='text/css' />
<link href="css/shoplist.css" rel='stylesheet' type='text/css' />
<link rel="start icon" href="images/resize_png_new.png"  >
</head>
<body>

<%@include file="common/commonHeader.jsp"%>

<div class="menu">
  <div class="menu-left">

  </div>
  <div class="menu-right">
    <div class="menu-top" >
      <p> &nbsp;  &nbsp;  &nbsp; 所有商品：${requestScope.foodsNum}件 &nbsp;  &nbsp;  &nbsp;
        &nbsp;  &nbsp;   &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp; 
        &nbsp;  &nbsp; &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;
        &nbsp;  &nbsp;  &nbsp;  
        &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  
        排序：<a href="/web/FoodServlet?action=lowtohigh">价格从低到高</a>
              |
              <a href="/web/FoodServlet?action=hightolow">价格从高到低</a>
              |
              <a href="/web/FoodServlet?action=foodsale">销量</a>
      </p>

        <c:forEach items="${requestScope.foods}" var="food">
            <div class="picture"><a href=""><img src="${food.imgPath}"  width="200px" height="200px"/>${food.name}<br />
                <h5 style="color:#F66">限时优惠￥${food.price}</h5>
                <div class="mask">
                    <h4>累计销量${food.sales}</h4>
                </div></a>
            </div>
        </c:forEach>

  </div>
</div>

</div>


<%@include file="/common/commonTail.jsp"%>

 <script type="text/javascript"  src="script/jquery-1.4.2.min.js"></script>
 <script type="text/javascript" src="script/js.js"></script>
</body>
</html>
