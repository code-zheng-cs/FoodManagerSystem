<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>注册</title>
<link href="http://localhost:8080/web/css/register.css" rel="stylesheet"  >
<link rel="start icon" href="http://localhost:8080/web/images/resize_png_new.png"  >
<script type="text/javascript">

    window.onload = function(){
        var userName = document.getElementById('username');
        var passWord = document.getElementById('password1');
        var passWordForTwo = document.getElementById('password2');
        var email = document.getElementById('email');//提交按钮
        var reg1 = /^[\w]{6,18}$/;//用户名 6--18位数字,字母,下划线_
        var reg2 = /^[\W\da-zA-Z_]{6,20}$/; //密码 6--20位数字,字母,任意字符
        var reg4 = /^[a-z1-9](?:\w|\-)+@[a-z\d]+\.[a-z]{2,4}$/i;
        var n1 = false;
        var n2 = false;
        var n3 = false;
        var n4 = false;
        userName.onblur = function(){
            if(this.value == ''){
               alert("用户名不能为空！")
            } else if(!reg1.test(this.value)){
               alert("请输入6--18位数字,字母,下划线_")
            } else {

                return n1 = true;
            }
        }
        //邮箱 以字母或者数字1-9开头+(任意个数字字母下划线\-)+@+(任意字母数字)+.+(2-4个字母)
        passWord.onblur = function(){
            if(this.value == ''){
                alert("密码不能为空！")
            } else if(!reg2.test(this.value)){
                alert("请输入6--20位数字,字母,任意字符！")
            } else {
                return n2 = true;
            }
        }
        passWordForTwo.onblur = function(){
            if(this.value == ''){
                alert("确定密码不能为空！")
            } else if(this.value!=passWord.value){
                alert("两次密码不相同！")
            } else{
                return n3=true;
            }
        }
        email.onblur = function(){
            if(this.value == ''){
                alert("邮箱不能为空")
            } else if(!reg4.test(this.value)){
               alert("邮箱以字母或者数字1-9开头+(任意个数字字母下划线\\-)+@+(任意字母数字)+.+(2-4个字母)")
            } else {
                return n4 = true;
            }
        }
        forms.onsubmit = function(){
            //正则表达式判断
            // var regs = !reg1.test(userName.value)||!reg2.test(password.value)||password.value != passwordTwos.value||!reg3.test(theName.value)||!reg4.test(identity.value)||!reg5.test(mailbox.value)||!reg6.test(phone.value);
            //变量判断
            var regs = n1==false||n2==false||n3==false||n4==false;
            console.log(regs);
            if(!regs == false){
                alert('您 填 写 的 信 息 有 误 !');
                return false;
            } else {
                alert('注册成功 ！');
                return true;
            }
        }
      $(function () {
        $("#username").blur(function () {
          //1 获取用户名
          var username = this.value;
          $.getJSON("http://localhost:8080/web/ajaxServlet","action=ajaxExistsUsername&username=" + username,function (data) {
            if (data.existsUsername) {
              alert("用户名已存在！");
            } else {
              alert("用户名可用！");
            }
          });
        });});
    }
</script>
</head>

<body class="bg-gray">
<div class="bg-bule">
  <!--top start-->
  <div class="tp for-register">
    <div class="tp_box clearfix">

    </div>
  </div>
  <!--top end--> 
  <!--hd start-->
  <div class="login-wrap">
    <div class="w940">
      <div class="header clearfix">
        <h1 class="fl"> </h1>

      </div>
    </div>
  </div>
  <!--hd end-->
  <div class="have-reg w940"><span>我已经注册，现在就&nbsp;<a href="login_user.jsp" class="blue_link">登录</a></span></div>
  <!-- content start -->
  <div class="container w940">
              <div class="welres">欢迎注册</div>
    <!--表单-->
    <form action="/web/RegisterServlet" method="post" id="forms">
    <div class="register">
      <div class="spsearch">
        <p>
          <label style="font-size: 20px;color: antiquewhite"><b class="star">*</b>&nbsp;用户名：</label>
          <input class="spnormal" type="text" name="username" id="username">
          <span  class="short">4-20位字符，支持英文、数字和符号的组合</span> </p>
      </div>
      <div class="spsearch">
        <p>
          <label style="font-size: 20px;color: antiquewhite"><b class="star">*</b>&nbsp;请设置密码：</label>
          <input class="spnormal" type="password" name="password1" id="password1">
          <span class="long">6-20位字符，支持英文、数字和符号的组合，不建议使用纯数字、纯字母或纯符号</span> </p>
      </div>
      <div class="spsearch">
        <p class="p_font">
          <label style="font-size: 20px;color: antiquewhite"><b class="star">*</b>&nbsp;请确定密码：</label>
          <input class="spnormal" type="password" name="password2" id="password2">
          <span  class="short">请再次输入密码</span> </p>
      </div>
      <div class="spsearch">
        <p>
          <label style="font-size: 20px;color: antiquewhite" ><b class="star">*</b>&nbsp;电子邮箱：</label>
          <input class="spnormal" type="text" name="email" id="email">
          <span  class="short">请输入电子邮箱</span> </p>
      </div>
      <div class="msg">
        <span class="msgSpan" ><%=request.getAttribute("msg")==null?"":request.getAttribute("msg")%></span>
      </div>
      <div class="spsearch item">
		  
        <p>
          <label>&nbsp;</label>
          <input type="submit">
        </p>
      </div>
    </div>
    </form>
  </div>
  <!--footer start-->
  <div class="ft for-register mt9">
    <div class="ft_box clearfix">
      <span id="reg_user_font">湘ICP ©食管会2020，All Rights Reserved</span>
    </div>
  </div>
  <!--footer end--> 
</div>
</body>
<script type="text/javascript" src="script/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="script/js.js"></script>
</html>
