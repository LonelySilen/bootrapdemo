<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- permission的风格文件 -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/public/style/permission.css">


<div class="container">
	<div class="col-xs-12 col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 permission_contain">
	
		<h2 class="sub-header">添加自定义菜单</h2>
		
		<div class="search">
			<h5 class="inline-h5">图标名称： </h5> 
			<input type="text" id="menuIcon" class="inputShort" placeholder="如：plus、star"/> 
			&nbsp;&nbsp;	
			<h5 class="inline-h5">菜单名称： </h5> 
			<input type="text" id="menuName" class="inputShort" /> 
			&nbsp;&nbsp;
			<h5 class="inline-h5">链接的页面： </h5> 
			<input type="text" id="menuPage" class="inputShort" placeholder="xxx.jsp"/> 
			&nbsp;&nbsp;		
			<button id="add_menu" class="btn btn-lg btn-danger" onclick="addMenu();">添加用户菜单</button>	
		</div>
		

	
		<h2 class="sub-header">菜单权限设置</h2>
		
		<div class="table-responsive">
		
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th>编号</th>
						<th>菜单名称</th>
						<th>权限级别</th>
					</tr>
				</thead>
				<tbody id="mList">
					
				</tbody>
			</table>
			
		</div>
		
		<button id="save_permission" class="btn btn-lg btn-success">保存权限数据</button>

	</div>
</div>

