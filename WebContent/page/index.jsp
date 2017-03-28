<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	href="<%=request.getContextPath()%>/public/style/index/index.css">

</head>

<body>

	<!-- 顶部导航栏 -->
	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">

			<!-- 分辨率低时显示的弹出左侧侧边栏按钮 -->
			<div class="pull-left visible-xs">
				<button type="button" class="offcanvas-nav-button"
					data-toggle="offcanvas"></button>
			</div>

			<a class="navbar-brand" href="#home" data-toggle="tab">我的Bootstrap3网站</a>

			<!-- 分辨率低时显示的弹出顶部导航栏的按钮 -->
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>

		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a id="my-exit" href="javascript:void(0);">退出</a></li>
			</ul>
		</div>
	</div>
	</nav>



	<div class="container">

		<div class="row row-offcanvas  row-offcanvas-left">

			<!-- 侧边导航栏 -->
			<div class="col-xs-3 col-sm-3 col-md-2 sidebar-offcanvas">


				<div class="pic-border">
					<div class="pic-background">
						<a href="#"> <img
							src="<%=request.getContextPath()%>/public/image/avatar.png"
							width="80">
						</a>
					</div>
				</div>

				<h5 id="user-name" class="user-name">
					
				</h5>

				<ul id="myTab" class="nav nav-sidebar">
					<li class="active">
						<a href="#home" data-toggle="tab">
							<span class="glyphicon glyphicon-home">&nbsp;</span>
							主页 
							<span class="sr-only">(current)</span>
						</a>
					</li>
					<li>
						<a href="#box" data-toggle="tab" name="menu-ctrl">
							<span class="glyphicon glyphicon-inbox">&nbsp;</span>
							盒子演示
						</a>
					</li>
					<li>
						<a href="#crud" data-toggle="tab" name="menu-ctrl">
							<span class="glyphicon glyphicon-scissors">&nbsp;</span>
							crud演示
						</a>
					</li>
					<li>
						<a href="#form" data-toggle="tab" name="menu-ctrl">
							<span class="glyphicon glyphicon-th">&nbsp;</span>
							表单演示
						</a>
					</li>
					
					<br  />
					
					<li>
						<a href="#permission" data-toggle="tab" name="menu-ctrl">
							<span class="glyphicon glyphicon-tower">&nbsp;</span>
							菜单权限
						</a>
					</li>
					<li>
						<a href="#management" data-toggle="tab" name="menu-ctrl">
							<span class="glyphicon glyphicon-user">&nbsp;</span>
							用户管理
						</a>
					</li>
					<li>
						<a href="#l2_Menu" class="nav-header menu-first collapsed" data-toggle="collapse" name="menu-ctrl">		
							<span class="glyphicon glyphicon-menu-down">&nbsp;</span>
							二级菜单
						</a>
						<ul id="l2_Menu" class="nav nav-list collapse menu-second">
				    		<li><a href="#template" data-toggle="tab"  name="menu-second-ctrl"><span class="glyphicon glyphicon-menu-right">&nbsp;</span>测试模板</a></li>
				    		<li><a href="#" data-toggle="tab" name="menu-second-ctrl"><span class="glyphicon glyphicon-menu-right">&nbsp;</span>子菜单</a></li>
				  		</ul>
		  			</li>
				</ul>	
			</div>


			<!-- 右侧主体内容 -->
			<div id="myTabContent" class="tab-content">

				<!-- 主页面 -->
				<div class="tab-pane fade in active" id="home">
					<div
						class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

						<h1 class="page-header">阿狸展示</h1>
						<div class="row placeholders">
							<div class="col-xs-6 col-sm-4 placeholder">
								<img src="<%=request.getContextPath()%>/public/image/1.png"
									class="img-responsive">
								<h4>Yes！</h4>
								<span class="text-muted"><s>$99.99</s> Sell out</span>
							</div>
							<div class="col-xs-6 col-sm-4 placeholder">
								<img src="<%=request.getContextPath()%>/public/image/2.png"
									class="img-responsive">
								<h4>Laugh</h4>
								<span class="text-muted">$79.99</span>
							</div>
							<div class="col-xs-6 col-sm-4 placeholder">
								<img src="<%=request.getContextPath()%>/public/image/3.png"
									class="img-responsive">
								<h4>Doubt</h4>
								<span class="text-muted">Only $59.99</span>
							</div>
						</div>




						<h2 class="sub-header">详细清单</h2>
						<div class="table-responsive">
							<table class="table table-striped table-hover">
								<thead>
									<tr>
										<th>编号</th>
										<th>商品名称</th>
										<th>描述</th>
										<th>价格</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1,001</td>
										<td>阿狸表情包 - YES!</td>
										<td>萌萌的阿狸</td>
										<td>$99.99</td>
									</tr>
									<tr>
										<td>1,002</td>
										<td>阿狸表情包 - LAUGTH</td>
										<td>偷笑的阿狸</td>
										<td>$79.99</td>
									</tr>
									<tr>
										<td>1,003</td>
										<td>阿狸表情包 - DOUBT</td>
										<td>疑惑的阿狸</td>
										<td>$59.99</td>
									</tr>
								</tbody>
							</table>
						</div>



					</div>
					<!-- 右侧主体内容 -->
				</div>


				<!-- box页面 -->
				<div class="tab-pane fade" id="box">
					<%@ include file="box.jsp"%>
				</div>
				
				<!-- crud页面 -->
				<div class="tab-pane fade" id="crud">
					<%@ include file="crud.jsp"%>
				</div>
				
				<!-- form页面 -->
				<div class="tab-pane fade" id="form">
					<%@ include file="form.jsp"%>
				</div>	
				
				<!-- permission页面 -->
				<div class="tab-pane fade" id="permission">
					<%@ include file="permission.jsp"%>
				</div>	
				
				<!-- management页面 -->
				<div class="tab-pane fade" id="management">
					<%@ include file="management.jsp"%>
				</div>	

				<!-- template页面 -->
				<div class="tab-pane fade" id="template">
					<%@ include file="template.jsp"%>
				</div>
							
			</div>
		</div>
		<!-- row -->


	</div>
	<!-- container -->


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
	<script src="<%=request.getContextPath()%>/public/js/index/index.js"></script>
	
	
	<!-- 权限页面定义的js（需要store和jquery） -->
	<script src="<%=request.getContextPath()%>/public/js/permission.js"></script>
	
	<!-- 用户管理页面定义的js（需要store和jquery） -->
	<script src="<%=request.getContextPath()%>/public/js/management.js"></script>	
	
</body>
</html>