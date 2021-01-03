<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>食管会首页</title>
<link href="css/shopping.css" rel='stylesheet' type='text/css' />
<link href="css/shoplist.css" rel='stylesheet' type='text/css' />
<link rel="start icon" href="images/resize_png_new.png"  >
</head>

<body>

<%@include file="common/commonHeader.jsp"%>

<div class="container">
  <div class="slider">
    <div class="area">
      <div id=js class="js">
        <div class="box01">
          <img onClick="location.href='goodslist.html'"  src="images/banner_01.jpg"> <img onClick="location.href='cart.html'"  style="DISPLAY: none"  src="images/banner_02.jpg"> <img onClick="location.href='details.html'" style="DISPLAY: none"  src="images/banner_03.jpg"> <img onClick="location.href='details.html'" style="DISPLAY: none"   src="images/banner_04.jpg"> <img onClick="location.href='details.html'" style="DISPLAY: none"   src="images/banner_05.jpg"> </div>
        <div class="bg"></div>
        <div id=jsNav class=jsNav> <a class="trigger imgSelected" href="javascript:void(0)">1</a> <a class="trigger" href="javascript:void(0)">2</a> <a class="trigger" href="javascript:void(0)">3</a> <a class="trigger" href="javascript:void(0)">4</a> <a class="trigger" href="javascript:void(0)">5</a> </div>
      </div>
    </div>
  </div>
  <div class="container-right">
    <div class="container1">
      <div class="pic-sale1"> <img src="images/sale1.jpg" title="歌帝梵巧克力" width="120px" height="90px"/> </div>
      <h4><a href="details.jsp">歌帝梵GODIVA巧克力</a></h4>
      <p>&nbsp;&nbsp;&nbsp;&nbsp;【进口】歌帝梵GODIVA牛奶白黑巧克力礼盒14枚圣诞生日节日送礼
      <h5 style="color:#F30 " > 现价￥258</h5>
      </p>
    </div>
    <br />
    <div class="container2">
      <div class="pic-sale2"> <img src="images/sale2.jpg" title="金典牛奶" width="120px" height="90px"/></div>
      <br />
      <h4><a href="detailMilk.jsp">金典牛奶</a></h4>
      <p>超定制伊利金典纯牛奶24盒整箱儿童学生高端营养早餐奶批发特价
      <h5 style="color:#F30 " > 特价￥68.8</h5>
      </p>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="container3">
      <div class="pic-sale3"> <img src="images/sale3.jpg"  title="杰克丹尼威士忌" width="120px" height="90px"/> </div>
      <h4><a href="#">杰克丹尼威士忌</a></h4>
      <p>富含香味 丰富醇厚 顺滑平衡
      <h5 style="color:#F30 " >
      现价￥159
      </h5>
      </p>
    </div>
  </div>
</div>


<div class="popular">
  <div class="popular1"> <a href="/web/FoodServlet?action=Salelist"><img src="images/pic_01.jpg" width="270px" height="350px"/>
    <div class="look">
      <h4>热门食品</h4>
      <p>查看更多</p>
    </div>
    </a> </div>
  <div class="popular1"> <a href="/web/FoodServlet?action=list"><img src="images/pic_02.jpg" width="270px" height="350px"/>
    <div class="look">
      <h4>厨房调味</h4>
      <p>查看更多</p>
    </div>
    </a> </div>
  <div class="popular1"><a href="/web/FoodServlet?action=list"> <img src="images/pic_03.jpg" width="270px" height="350px"/>
    <div class="look">
      <h4>酒水饮料</h4>
      <p>查看更多</p>
    </div>
    </a></div>
  <div class="popular1"> <a href="/web/FoodServlet?action=list"><img src="images/pic_04.jpg" width="270px" height="350px"/>
    <div class="look">
      <h4>新鲜食材</h4>
      <p>查看更多</p>
    </div>
    </a> </div>
</div>

   <%@include file="common/commonTail.jsp"%>

<div class="footer2">
  <p>关于我们 - 版权声明 - 帮助(？) - 联系我们 - 友情链接 - 用户注册 - 地图<br />
    zlh的食管会 版权所有 </p>
</div>

<script type="text/javascript"  src="script/jquery-1.4.2.min.js"></script> 
<script type="text/javascript" src="script/js.js"></script> 
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
