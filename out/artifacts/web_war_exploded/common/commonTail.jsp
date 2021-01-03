<%--
  Created by IntelliJ IDEA.
  User: 85264
  Date: 2020/12/26
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="content clearfix">
    <div class="content1">
        <h4>购物指南</h4>
        <ul class="f_nav">
            <li><a href="../goodslist.jsp">购物流程</a></li>
            <li><a href="../goodslist.jsp">会员介绍</a></li>
            <li><a href="../goodslist.jsp">团购|机票</a></li>
            <li><a href="../goodslist.jsp">常见问题</a></li>
            <li><a href="../goodslist.jsp">意见反馈</a></li>
            <li><a href="../goodslist.jsp">联系客服</a></li>
        </ul>
    </div>
    <div class="content1">
        <h4>配送方式</h4>
        <ul class="f_nav">
            <li><a href="../goodslist.jsp">上门自取</a></li>
            <li><a href="../goodslist.jsp">211限时到达</a></li>
            <li><a href="../goodslist.jsp">配送服务查询</a></li>
            <li><a href="../goodslist.jsp">配送费收取标准</a></li>
            <li><a href="../goodslist.jsp">同城配送</a></li>
            <li><a href="../goodslist.jsp">海外配送</a></li>
        </ul>
    </div>
    <div class="content1">
        <h4>支付方式</h4>
        <ul class="f_nav">
            <li><a href="#">支付宝</a></li>
            <li><a href="#">微信</a></li>
            <li><a href="#">银联</a></li>
            <li><a href="#">比特币</a></li>
            <li><a href="#">visa</a></li>
            <li><a href="#">paypal</a></li>
        </ul>
    </div>
    <div class="content1">
        <h4>售后服务</h4>
        <ul class="f_nav">
            <li><a href="#">售后政策</a></li>
            <li><a href="#">价格保护</a></li>
            <li><a href="#">退款说明</a></li>
            <li><a href="#">返修|退换货</a></li>
            <li><a href="#">取消订单</a></li>
            <li><a href="#">订单详情</a></li>
        </ul>
    </div>
    <div class="content1">
        <h4>商家服务</h4>
        <ul class="f_nav">
            <li><a href="#">商家帮助</a></li>
            <li><a href="#">商家入驻</a></li>
            <li><a href="#">新手指导</a></li>
            <li><a href="#">培训中心</a></li>
            <li><a href="#">信息公告</a></li>
            <li><a href="#">广告服务</a></li>
        </ul>
    </div>
</div>
<div class="footer1">
    <div class="footer-left">
        <div class="footer-pic">
            <img src="http://localhost:8080/web/images/picll.jpg" width="350px" height="151px"/>
            <div class="put">
            </div>
        </div>
        <div class="address"> 食管会公司地址：<br />
            中国<br />
            湖南/张家界市<br />
            永定区吉首大学张家界校区第三教学楼3317<br />
            <br />
            Tel: 18595808768<br />
            Email: <a href="javascript:void(0);"οnclick="js_method()">sgh@163.com</a>
            </address>
        </div>
        <div class="footer-right">
            <div id="yournote">
                <form action="#" method="post">
                    <fieldset>
                        <legend>乐在分享</legend>
                        <input type="text" placeholder="留下您宝贵的建议：" onfocus="this.value=(this.value=='留下您宝贵的建议')? '' : this.value ;" />
                        <input type="submit" id="subscribe" value="留言" />
                    </fieldset>
                </form>
            </div>
        </div>
        <div class="clearfix"> </div>
        <!--------footer top--------->
        <!--------footer-------->
        <div class="footer2">
            <p>Copyright &copy; 2020.Company<i> sgh </i> All rights reserved.</p>
        </div>
    </div>
</div>
</body>
</html>
