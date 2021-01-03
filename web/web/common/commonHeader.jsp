<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 85264
  Date: 2020/12/27
  Time: 8:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
            <li> <a href="#">最近浏览</a></li>
            |
            <li> <a href="#">关于我们</a></li>
            |

            <c:if test="${empty sessionScope.loginAdminName&&empty sessionScope.loginUserName}">
                <li> <a href="http://localhost:8080/web/login_user.jsp" target="_self">登录</a></li>
                |
                <li> <a href="http://localhost:8080/web/register.jsp" target="_self">注册</a></li>
            </c:if>
            <c:if test="${not empty sessionScope.loginAdminName}">
                欢迎
                <span>${sessionScope.loginAdminName}</span>
                <a href="/web/ExitServlet?action=Admin" style="text-decoration: none;color: #799cff;"><span>注销</span></a>
            </c:if>

            <c:if test="${not empty sessionScope.loginUserName}">
                欢迎
                <span>${sessionScope.loginUserName}</span>
                <a href="/web/ExitServlet?action=User" style="text-decoration: none;color: #799cff;"><span>注销</span></a>
            </c:if>

        </ul>
    </div>
</div>
<div class="header1">
    <div id="logo"> <a title="食管会" href="http://localhost:8080/web/index.jsp"><img src="http://localhost:8080/web/images/logo.jpg" alt="食管会logo" /></a> </div>
    <div class="search">
        <form action="#" method="post" id="sitesearch">
            <fieldset>
                <input type="text" value="搜索一下" onfocus="this.value=(this.value=='搜索一下')? '' : this.value ;" />
                <input type="image" src="http://localhost:8080/web/images/search.png" id="search" alt="搜索一下" />
            </fieldset>
        </form>
    </div>
    <div class="icon1"> <a href="#"><img class="img1" src="http://localhost:8080/web/images/love.jpg" title="收藏"  width="50px" height="50px"/> </a> </div>
    <div class="icon2"><a href="/web/user/cart.jsp"> <img class="img1" src="http://localhost:8080/web/images/bag.jpg" title="购物车" width="50px" height="50px"/> </a> </div>

</div>
<!------end header logo------>

<!--------start header menu--------->
<div class="header-menu">
    <ul>
        <li><a class="a1" href="">首页</a> </li>
        <li><a class="a2" href="">今日最新</a>
            <ul>
                <li><a href="">进口商品</a></li>
                <li><a href="">食材水果</a></li>
                <li><a href="">粮油副食</a></li>
                <li><a href="">酒水饮料</a></li>
                <li><a href="">小吃零食</a></li>
                <li><a href="">生活服务</a></li>
            </ul>
        </li>
        <li><a class="a3" href="">进口商品</a>
            <ul>
                <li><a href="">进口牛奶</a></li>
                <li><a href="">进口零食</a></li>
                <li><a href="">进口饼干</a></li>
                <li><a href="">进口速食</a></li>
                <li><a href="">进口肉类</a></li>
                <li><a href="">进口调味品</a></li>
            </ul>
        </li>
        <li><a class="a4" href="">食材水果</a>
            <ul>
                <li><a href="">新鲜时蔬</a></li>
                <li><a href="">香甜水果</a></li>
                <li><a href="">团购蔬果</a></li>
                <li><a href="">鲜活海鲜</a></li>
                <li><a href="">高端食材</a></li>
                <li><a href="">打折食材</a></li>
            </ul>
        </li>
        <li><a class="a5" href="">粮油副食</a>
            <ul>
                <li><a href="">大米面粉</a></li>
                <li><a href="">健康杂粮</a></li>
                <li><a href="">食用油</a></li>
                <li><a href="">调味品</a></li>
                <li><a href="">菌菇干货</a></li>
                <li><a href="">下饭菜</a></li>
            </ul>
        </li>
        <li><a class="a6" href="">酒水饮料</a>
            <ul>
                <li><a href="">热门饮料</a></li>
                <li><a href="">葡萄酒</a></li>
                <li><a href="">白酒</a></li>
                <li><a href="">啤酒</a></li>
                <li><a href="">洋酒</a></li>
                <li><a href="">鸡尾酒</a></li>
            </ul>
        </li>
        <li><a class="a7" href="">小吃零食</a>
            <ul>
                <li><a href="">特产小吃</a></li>
                <li><a href="">热门零食</a></li>
                <li><a href="">零食大礼包</a></li>
                <li><a href="">高端零食</a></li>
                <li><a href="">特惠专区</a></li>
                <li><a href="">团购专区</a></li>
            </ul>
        </li>
        <li><a class="a8" href="">生活服务</a>
            <ul>
                <li> <a href=""> 信用卡还贷</a></li>
                <li> <a href=""> 转账</a></li>
                <li> <a href=""> 充话费</a></li>
                <li> <a href=""> 点券</a></li>
                <li> <a href=""> 售后处理</a></li>
                <li> <a href=""> 联系客服</a></li>
            </ul>
        </li>

    </ul>
</div>
</body>
</html>
