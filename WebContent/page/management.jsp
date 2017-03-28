<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- management的风格文件 -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/public/style/management/management.css">


<div class="container">
	<div class="col-xs-12 col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 management_contain">
	
		<h1 class="page-header">用户信息</h1>
		
		<div class="table-responsive">
		
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th>编号</th>
						<th>用户名</th>
						<th>角色</th>
						<th>密码</th>
					</tr>
				</thead>
				<tbody id="uList">
					
				</tbody>
			</table>
			
		</div>
		
		<button id="save_users" class="btn btn-lg btn-success">保存用户数据</button>

	</div>
</div>

