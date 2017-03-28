<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- crud的风格文件 -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/public/style/crud/crud.css">


<div class="container">

	<div class="col-xs-12 col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 crud_contain">

		<h1 class="page-header">阿狸仓库</h1>
		
		<div class="crud-header">
			<h5 class="inline-h5">仓库位置： </h5>
			<select id="selSearchPlace">
				<option value="-1">--请选择--</option>
			</select>&nbsp;&nbsp;
			<input type="button" id="btnSearch" value="查询" class="btn btn-danger" />&nbsp;&nbsp;
		</div>

		<div class="search">
			<h5 class="inline-h5">名称： </h5> 
			<input type="text" id="txtName" class="inputShort" /> 
			&nbsp;&nbsp;<h5 class="inline-h5">位置： </h5> 
			<select id="selAddPlace">
			</select> 
			&nbsp;&nbsp;<h5 class="inline-h5">价值： </h5> 
			<input type="text" id="txtMoney" class="inputShort" /> 
			&nbsp;&nbsp;<h5 class="inline-h5">描述： </h5> 
			<input type="text" id="txtDate" class="inputShort" />
			&nbsp;&nbsp;<input type="button" id="btnAdd" value="新增" class="btn btn-danger" />
		</div>
		
		<!-- 下面的div用于显示登录成功或者失败的信息  -->
	    <div id="msg-show"></div>
		
		<div class="table-responsive">
		
			<table id="tbList" class="table table-striped table-hover tbList">
			<thead>
					<tr>
						<th>编号</th>
						<th>物品名称</th>
						<th>仓库位置</th>
						<th>物品价值</th>
						<th>物品描述</th>
						<th>操作</th>
					</tr>
			</thead>
			<tbody>
					<tr></tr><!-- 这个空的<tr></tr>防止新元素插入到thead中 -->
			</tbody>
			</table>
			
		</div>
		
	</div><!-- row -->
	
</div>



<!-- 自己定义的js -->
<script src="<%=request.getContextPath()%>/public/js/crud/crud.js"></script>