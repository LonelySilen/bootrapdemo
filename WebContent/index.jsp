<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>

<!-- 下面这句用于响应移动设备的改变布局，必须写在前面 -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Bootstrap3管理系统</title>

<!-- Bootstrap3 核心 CSS 文件 -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/public/bootstrap/css/bootstrap.min.css">
<!-- 自己定义的风格文件 -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/public/style/login/login.css">

</head>

<body>

    <div class="container">
    
	  <h1 class="sysname" >我的管理系统</h1>
	  <hr class="myhr" />
	  
      <form class="form-signin">
  
        <!-- 下面的div用于显示登录成功或者失败的信息  -->
        <div id="msg-show"></div>
        
        <label for="inputUsername" class="sr-only">Email地址</label>
        <input type="username" id="inputUsername" class="form-control" placeholder="请输入用户名" required autofocus />
        
        <label for="inputPassword" class="sr-only">密码</label>
        <input type="password" id="inputPassword" class="form-control" placeholder="请输入密码" required />
        
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> 记住我
          </label>
        </div>
        
        <button id="initdata" class="btn btn-lg btn-danger">初始化数据</button>
        <button id="mylogin" class="btn btn-lg btn-success">登入</button>
        
          
      </form>
     
    </div> <!-- /container -->


	<!-- JQuery文件,务必在bootstrap.min.js 之前引入 -->
	<script
		src="<%=request.getContextPath()%>/public/js/jquery/jquery.min.1.11.2.js"></script>

	<!-- Bootstrap3的 JavaScript文件 -->
	<script
		src="<%=request.getContextPath()%>/public/bootstrap/js/bootstrap.min.js"></script>

	<!-- store.js 第三方本地存储控制  -->
	<script
		src="<%=request.getContextPath()%>/public/js/store.min.js"></script>

	<!-- 自己定义的js -->
	<script src="<%=request.getContextPath()%>/public/js/login/login.js"></script>
	
</body>
</html>