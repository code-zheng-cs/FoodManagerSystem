<%--
  Created by IntelliJ IDEA.
  User: 85264
  Date: 2020/12/29
  Time: 22:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="http://localhost:8080/web/css/shopping.css" rel='stylesheet' type='text/css' />
    <link href="http://localhost:8080/web/css/shoplist.css" rel='stylesheet' type='text/css' />
    <link rel="start icon" href="images/resize_png_new.png"  >
    <script src="https://cdn.staticfile.org/echarts/4.3.0/echarts.min.js"></script>
    <style>
        .pay{
            width: 400px;
            height: 100px;
            margin-left:300px;
            margin-top: 100px;
        }
    </style>
</head>
<body>
<%@include file="/common/commonHeader.jsp"%>
         <div class="pay">
             支付成功 订单号为${requestScope.orderId}<a href="/web/details.jsp">返回</a>
         </div>


<%@include file="/common/commonTail.jsp"%>
</body>
</html>
