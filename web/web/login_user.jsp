<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>会员登录</title>
<link href="http://localhost:8080/web/css/register.css" rel="stylesheet" />
<link rel="start icon" href="http://localhost:8080/web/images/resize_png_new.png"  >
</head>

<body>
<div class="bg-bule"> 
  <!--hd start-->
  <div class="login-wrap">
    <div class="w940">
      <div class="header clearfix">
        <h1 class="fl"> <a title="食管会" href="index.jsp"> </a> </h1>

      </div>
    </div>
  </div>
  <!--hd end-->
  <div class="login-box w940 clearfix" >
    <div class="pic fl">
<%--      <img src="http://localhost:8080/web/images/loginimg2.jpg" title="上食管会，带你边看边买">--%>
    </div>
    <div class="fr entry">
      <h2 class="title">会员登录</h2>
      <form action="/web/UserLoginServlet" method="post">
      <dl class="entry-name">
        <dt>
          <label>账号</label>
        </dt>
        <dd>
          <input type="text" class="text" placeholder="手机号/用户名" name="username" value="<%=request.getAttribute("username")==null?"":request.getAttribute("username")%>">
        </dd>
      </dl>
      <dl>
        <dt>
          <label >密码</label>
        </dt>
        <dd>
          <input type="password" class="text" name="password">
        </dd>
      </dl>
        <div class="msg">
          <span style="color:red"><%=request.getAttribute("msg")!=null?request.getAttribute("msg"):"请输入账号密码"%></span>
        </div>
      <div class="item">
        <input type="submit">
      </div>
      <div class="forget-psd mb15"> 
	 
	  <a href="login_admin.jsp" class="copyRight blue_link">管理员入口</a>
	  <a href="register.jsp" class="fr">免费注册</a>
	  </div>
      </form>
    </div>
  </div>
  <!--footer start-->
  <div class="ft for-register mt10">
    <div class="ft_box clearfix">
      <span id="login_user_font">湘ICP ©食管会2020，All Rights Reserved</span>
    </div>
  </div>
  <!--footer end--> 
</div>
</body>
</html>
