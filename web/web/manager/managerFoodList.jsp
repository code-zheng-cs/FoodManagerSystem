<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 85264
  Date: 2020/12/27
  Time: 13:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理食品页面</title>
    <link href="http://localhost:8080/web/css/shopping.css" rel='stylesheet' type='text/css' />
    <link rel="start icon" href="http://localhost:8080/web/images/resize_png_new.png"  >
</head>
<body>
<div class="top1">
    <div class="top-left">
        <p> <a href="http://localhost:8080/web/goodslist.jsp" target="_blank">购物打折啦</a></p>
    </div>
    <div class="top-middle">
        <marquee id="move">
            欢迎来到食管会,食管会随时随地带你购物！
        </marquee>
    </div>
    <div class="top-right">
        <ul>
            <li> <a href="#">欢迎</a></li>
            <span>${sessionScope.loginAdminName}</span>
            <li> <a href="#">管理员</a></li>
            |
            <li> <a href="/web/manager/managerPage.jsp" target="_self">返回</a></li>
            |
            <li> <a href="/web/index.jsp" target="_self">返回主页</a></li>
        </ul>
    </div>
</div>
<div class="header1">
    <div id="logo"> <a title="食管会" href="http://localhost:8080/web/index.jsp"><img src="http://localhost:8080/web/images/logo.jpg" alt="食管会logo" /></a> </div>

</div>
       <h1 class="manageh1">食品信息表</h1>
<div id="main" style="overflow:scroll;">
    <table align="center" border="1px" cellspacing="0px">
        <tr>
            <td>名称</td>
            <td>价格</td>
            <td>品牌</td>
            <td>销量</td>
            <td>库存</td>
            <td colspan="2">操作</td>
        </tr>

        <c:forEach items="${requestScope.foods}" var="food">
            <tr>
                <td>${food.name}</td>
                <td>${food.price}</td>
                <td>${food.brand}</td>
                <td>${food.sales}</td>
                <td>${food.stock}</td>
                <td><a href="/web/FoodServlet?action=getFood&id=${food.id}">修改</a></td>
                <td><a class="" href="/web/FoodServlet?action=delete&id=${food.id}">删除</a></td>
            </tr>
        </c:forEach>

        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td><a href="manager/food_edit.jsp">添加食品</a></td>
        </tr>
    </table>
</div>
       <div class="footer2">
           <p>Copyright &copy; 2020.Company<i> sgh </i> All rights reserved.</p>
       </div>
</body>
</html>
