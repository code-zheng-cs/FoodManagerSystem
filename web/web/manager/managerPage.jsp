<%--
  Created by IntelliJ IDEA.
  User: 85264
  Date: 2020/12/27
  Time: 14:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员页面</title>
    <link href="http://localhost:8080/web/css/shopping.css" rel='stylesheet' type='text/css' />
    <link rel="start icon" href="http://localhost:8080/web/images/resize_png_new.png"  >
</head>
<body>
<%--页面头部--%>
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
            <span>${sessionScope.loginAdminName}</span>
            <li><a href="#">管理员</a></li>
            |
            <li>
                <a href="/web/ExitServlet?action=Admin" style="text-decoration: none;color: #799cff;"><span>注销</span></a>
            </li>
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
<%--页面头部结束--%>

<%--页面主体开始--%>
<a href="#" style="text-decoration: none"><h1 class="manageh1">后台管理页面</h1></a>
<div class="mid_area">
    <div class="left_part">
        <div class="left">
            <a href="/web/FoodServlet?action=list" style="text-decoration: none">
                <div class="span_text">食</div>
                <div class="span_text">品</div>
                <div class="span_text">管</div>
                <div class="span_text">理</div>
            </a>
        </div>
        <div class="right">

        </div>
    </div>
    <div class="mid_part">
        <div class="left">
            <a href="/web/FoodServlet?action=listPic" style="text-decoration: none">
                <div class="span_text">统</div>
                <div class="span_text">计</div>
                <div class="span_text">表</div>
                <div class="span_text">图</div>
            </a>
        </div>
        <div class="right">

        </div>
    </div>
    <div class="right_part">
        <div class="left">
            <a href="/web/FoodServlet?action=list" style="text-decoration: none">
                <div class="span_text">食</div>
                <div class="span_text">品</div>
                <div class="span_text">信</div>
                <div class="span_text">息</div>
                <div class="span_text">页</div>
                <div class="span_text">面</div>
            </a>

        </div>
        <div class="right">

        </div>
    </div>
</div>
<%--页面主体结束--%>

<%--页面尾部--%>
<div class="footer2">
    <p>Copyright &copy; 2020.Company<i> sgh </i> All rights reserved.</p>
</div>
</body>
</html>
