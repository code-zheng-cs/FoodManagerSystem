<%--
  Created by IntelliJ IDEA.
  User: 85264
  Date: 2020/12/28
  Time: 8:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理食品</title>

    <link href="http://localhost:8080/web/css/shopping.css" rel='stylesheet' type='text/css' />
    <link rel="start icon" href="http://localhost:8080/web/images/resize_png_new.png"  >
    <script type="text/javascript"  src="../script/jquery-1.4.2.min.js"></script>
    <style type="text/css">
        h1 {
            text-align: center;
            margin-top: 200px;
        }

        h1 a {
            color:red;
        }

        input {
            text-align: center;
        }
        #header{
            width: 390px;
            height: 50px;
            margin:auto;
        }
        #main{
            width: 1000px;
            height:370px;
            margin:auto;
        }
    </style>
</head>
<body>
<div class="top1">
    <div class="top-left">
        <p><a href="http://localhost:8080/web/goodslist.jsp" target="_blank">购物打折啦</a></p>
    </div>
    <div class="top-middle">
        <marquee id="move">
            欢迎来到食管会,食管会随时随地带你购物！
        </marquee>
    </div>
    <div class="top-right">
        <ul>
            <li><a href="#">欢迎</a></li>
            <span>${requestScope.username}</span>
            <li><a href="#">管理员</a></li>
            |
            <li><a href="/web/index.jsp" target="_self">注销</a></li>
            |
            <li><a href="/web/manager/managerindex.jsp" target="_self">主页</a></li>
        </ul>
    </div>
</div>
<div class="header1">
    <div id="logo">
        <a title="食管会" href="http://localhost:8080/web/index.jsp">
            <img src="http://localhost:8080/web/images/logo.jpg" alt="食管会logo"/>
        </a>
    </div>
</div>
<div id="header">
    <img class="logo_img" alt="" src="../../static/img/logo.gif" >
    <span class="wel_word">编辑食品</span>
    <a href="/web/FoodServlet?action=list">食品管理</a>
    <a href="order_manager.jsp">订单管理</a>
</div>

<div id="main">
    <form action="/web/FoodServlet" method="get" >
        <input type="hidden" name="action" value="${ empty param.id ? "add" : "update" }" />
        <input type="hidden" name="id" value="${ requestScope.food.id }" />
        <table border="1px" cellspacing="0px">
            <tr>
                <td>名称</td>
                <td>价格</td>
                <td>品牌</td>
                <td>销量</td>
                <td>库存</td>
                <td colspan="2">操作</td>
            </tr>
            <tr>
                <td><input name="name" type="text" value="${requestScope.food.name}"/></td>
                <td><input name="price" type="text" value="${requestScope.food.price}"/></td>
                <td><input name="brand" type="text" value="${requestScope.food.brand}"/></td>
                <td><input name="sales" type="text" value="${requestScope.food.sales}"/></td>
                <td><input name="stock" type="text" value="${requestScope.food.stock}"/></td>
                <td><input type="submit" value="提交"/></td>
            </tr>
        </table>
    </form>
</div>
<div class="footer2">
    <p>Copyright &copy; 2020.Company<i> sgh </i> All rights reserved.</p>
</div>
</body>
</html>
