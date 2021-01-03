<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>金典牛奶</title>
    <link href="http://localhost:8080/web/css/details.css" rel='stylesheet' type='text/css' />
    <link href="http://localhost:8080/web/css/shopping.css" rel='stylesheet' type='text/css' />
    <link rel="start icon" href="images/resize_png_new.png"  >
    <script type="text/javascript"  src="script/jquery-1.4.2.min.js"></script>
    <script >

    </script>


    <Script type="text/javascript">
        var i;
        window.onload = function(){
            var plus = document.getElementById("plus");
            i = document.getElementById("text").value;
            var subtract = document.getElementById("subtract");
            var money = document.getElementById("money").value;
            plus.onclick = function(){
                i++;
                document.getElementById("text").value = i;
                document.getElementById("money").value = i*money;
            }
            subtract.onclick = function(){

                if (i>0) {
                    i--;
                    document.getElementById("text").value = i;
                    document.getElementById("money").value = i*money;
                } else{
                    i=0;
                    document.getElementById("text").value = i;
                    document.getElementById("money").value = i*money;
                }
            }
        }

        $(function () {
            // 给加入购物车按钮绑定单击事件
            $("button.addToCart").click(function () {
                /**
                 * 在事件响应的function函数 中，有一个this对象，这个this对象，是当前正在响应事件的dom对象
                 * @type {jQuery}
                 */
                <c:if test="${empty sessionScope.loginAdminName&&empty sessionScope.loginUserName}">
                alert("请先登录");
                </c:if>
                <c:if test="${not empty sessionScope.loginAdminName}">
                var foodId = $(this).attr("foodId");
                location.href ="http://localhost:8080/web/CartServlet?action=addItem&id="+foodId+"&num="+i;
                confirm("恭喜您，添加成功");
                </c:if>

                <c:if test="${not empty sessionScope.loginUserName}">
                var foodId = $(this).attr("foodId");
                location.href ="http://localhost:8080/web/CartServlet?action=addItem&id="+foodId+"&num="+i;
                confirm("恭喜您，添加成功");
                </c:if>

            });
        });
    </Script>
</head>

<body>
<!------ start header top------->

<!------start header logo------->
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
                <a href="/web/ExitServlet?action=User" style="text-decoration: none;color: #799cff;"><span>注销</span></a>
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
                <input type="text" value="搜索一下" onfocus="this.value=(this.value=='搜索一下)? '' : this.value ;" />
                <input type="image" src="http://localhost:8080/web/images/search.png" id="search" alt="搜索一下" />
            </fieldset>
        </form>
    </div>
    <div class="icon1"> <a href=""><img class="img1" src="http://localhost:8080/web/images/love.jpg" title="收藏"  width="50px" height="50px"/> </a> </div>
    <div class="icon2"><a href="/web/user/cart.jsp"> <img class="img1" src="http://localhost:8080/web/images/bag.jpg" title="购物车" width="50px" height="50px"/> </a> </div>

</div>

<div class="menu">
    <div class="menu-left">
        <div class="menu-A1">
            <div class="menu-a1"><img class="imgbig" src="images/sale2.jpg" width="300" height="400" /></div>
            <div class="menu-a11">
                <img src="images/sale2.jpg"  width="80" height="95"/>
                <img src="images/sale2.jpg"  width="80" height="95" />
                <img src="images/sale2.jpg"  width="80" height="95"/> </div>
        </div>
        <div class="menu-A2">
            <div class="menu-a2">
                <h3>
                    超定制伊利金典纯牛奶24盒整箱儿童学生高端营养早餐奶批发特价
                </h3>
                <h1>￥68.8</h1>
            </div>
            <div class="menu-a3">

            </div>
            <div class="menu-a4">
                <div id="box">
                    <h4>选择购买数量：</h4>
                    <div class="addgoodArea">
                        <div class="addgood"><button id="subtract">-</button></div>

                        <div class="addgood"><input type="text" id="text" value="1"/></div>
                        <div class="addgood"><button id="plus">+</button></div>
                        <div class="addgood">&nbsp;&nbsp;&nbsp;¥<input type="text" id="money" value="68.8"/></div>
                    </div>
                </div>
                <br />
            </div>
            <div class="menu-a5">
                <button foodId=5 type="button" class="addToCart">加入购物车 </button> </div>
            <div class="menu-a6">
                <h5><a href="/web/login_user.jsp">
                    <c:if test="${empty sessionScope.loginAdminName&&empty sessionScope.loginUserName}">
                        现在登录放在购物车
                    </c:if>
                    <c:if test="${not empty sessionScope.loginAdminName}">

                    </c:if>

                    <c:if test="${not empty sessionScope.loginUserName}">

                    </c:if>
                </a></h5>
            </div>
        </div>
        <br />
        <br />
        <div class="menu-B">
            <div class="b">商品详情</div>
        </div>
        <div class="menu-C">
            <img src="images/sale2.jpg" alt="" width="1100px" height="600px">
        </div>

    </div>

    <%@include file="/common/commonTail.jsp"%>

</body>
</html>
