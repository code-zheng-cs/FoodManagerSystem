<%--
  Created by IntelliJ IDEA.
  User: 85264
  Date: 2020/12/28
  Time: 8:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员主页</title>
    <link href="http://localhost:8080/web/css/shopping.css" rel='stylesheet' type='text/css' />
    <link href="http://localhost:8080/web/css/shoplist.css" rel='stylesheet' type='text/css' />
    <link rel="start icon" href="../images/resize_png_new.png"  >
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
            <li> <a href="http://localhost:8080/web/manager/managerPage.jsp">管理后台</a></li>
            |
            <li> <a href="#">关于我们</a></li>
            |
            <li> <a href="http://localhost:8080/web/user/login_user.jsp" target="_blank">欢迎</a></li>
            <span>${sessionScope.loginAdminName}</span>
            <li> <a href="http://localhost:8080/web/user/register.jsp" target="_blank">管理员</a></li>
        </ul>
    </div>
</div>
<div class="header1">
    <div id="logo"> <a title="食管会" href="http://localhost:8080/web/index.jsp"><img src="http://localhost:8080/web/images/logo.jpg" alt="食管会logo" /></a> </div>
    <div class="search">
        <form action="#" method="post" id="sitesearch">
            <fieldset>
                <input type="text" value="搜索一下" onfocus="this.value=(this.value=='搜索一下)? '' : this.value ;" />
                <input type="image" src="http://localhost:8080/web/images/search.png" id="search" alt="搜索一下" />
            </fieldset>
        </form>
    </div>
    <div class="icon1"> <a href=""><img class="img1" src="http://localhost:8080/web/images/love.jpg" title="收藏"  width="50px" height="50px"/> </a> </div>
    <div class="icon2"><a href=""> <img class="img1" src="http://localhost:8080/web/images/bag.jpg" title="购物车" width="50px" height="50px"/> </a> </div>

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
<div class="container">
    <div class="slider">
        <div class="area">
            <div id=js class="js">
                <div class="box01"> <img onClick="location.href='goodslist.html'"  src="../images/banner_01.jpg"> <img onClick="location.href='cart.html'"  style="DISPLAY: none"  src="../images/banner_02.jpg"> <img onClick="location.href='details.html'" style="DISPLAY: none"  src="../images/banner_03.jpg"> <img onClick="location.href='details.html'" style="DISPLAY: none"   src="../images/banner_04.jpg"> <img onClick="location.href='details.html'" style="DISPLAY: none"   src="../images/banner_05.jpg"> </div>
                <div class="bg"></div>
                <div id=jsNav class=jsNav> <a class="trigger imgSelected" href="javascript:void(0)">1</a> <a class="trigger" href="javascript:void(0)">2</a> <a class="trigger" href="javascript:void(0)">3</a> <a class="trigger" href="javascript:void(0)">4</a> <a class="trigger" href="javascript:void(0)">5</a> </div>
            </div>
        </div>
    </div>
    <div class="container-right">
        <div class="container1">
            <div class="pic-sale1"> <img src="../images/sale1.jpg" title="歌帝梵巧克力" width="120px" height="90px"/> </div>
            <h4><a href="goodslist.jsp">歌帝梵GODIVA巧克力</a></h4>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;【进口】歌帝梵GODIVA牛奶白黑巧克力礼盒14枚圣诞生日节日送礼
            <h5 style="color:#F30 " > 现价￥258</h5>
            </p>
        </div>
        <br />
        <div class="container2">
            <div class="pic-sale2"> <img src="../images/sale2.jpg" title="金典牛奶" width="120px" height="90px"/></div>
            <br />
            <h4><a href="goodslist.jsp">金典牛奶</a></h4>
            <p>超定制伊利金典纯牛奶24盒整箱儿童学生高端营养早餐奶批发特价
            <h5 style="color:#F30 " > 特价￥119.8</h5>
            </p>
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <div class="container3">
            <div class="pic-sale3"> <img src="../images/sale3.jpg"  title="杰克丹尼威士忌" width="120px" height="90px"/> </div>
            <h4><a href="goodslist.jsp">杰克丹尼威士忌</a></h4>
            <p>富含香味 丰富醇厚 顺滑平衡
            <h5 style="color:#F30 " >
                现价￥159
            </h5>
            </p>
        </div>
    </div>
</div>
<!--------end content1--------->

<!--------start content 2--------->

<div class="popular">
    <div class="popular1"> <a href="/web/FoodServlet?action=Salelist"><img src="../images/pic_01.jpg" width="270px" height="350px"/>
        <div class="look">
            <h4>热门食品</h4>
            <p>查看更多</p>
        </div>
    </a> </div>
    <div class="popular1"> <a href="/web/FoodServlet?action=Salelist"><img src="../images/pic_02.jpg" width="270px" height="350px"/>
        <div class="look">
            <h4>厨房调味</h4>
            <p>查看更多</p>
        </div>
    </a> </div>
    <div class="popular1"><a href="/web/goodslist.jsp"> <img src="../images/pic_03.jpg" width="270px" height="350px"/>
        <div class="look">
            <h4>酒水饮料</h4>
            <p>查看更多</p>
        </div>
    </a></div>
    <div class="popular1"> <a href="/web/goodslist.jsp"><img src="../images/pic_04.jpg" width="270px" height="350px"/>
        <div class="look">
            <h4>新鲜食材</h4>
            <p>查看更多</p>
        </div>
    </a> </div>
</div>

<!--------end content2--------->

<!-------- start content3-------->


<!-------- end content3-------->

<!--------start  footer top-------->

<%@include file="/common/commonTail.jsp"%>
<!--------end footer top--------->
<!--------start footer-------->

<div class="footer2">
    <p>关于我们 - 版权声明 - 帮助(？) - 联系我们 - 友情链接 - 用户注册 - 地图<br />
        zlh的食管会 版权所有 </p>
</div>
<!-------- end footer --------->

<script type="text/javascript"  src="../script/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="../script/js.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $(".area").hover(function(){
                $(this).find(".qq").show(100);}
            ,function(){
                $(this).find(".qq").hide(100);
            });
    });
</script>
</body>
</html>
