<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- box的风格文件 -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/public/style/box/box.css">


<div class="container">
	<div
		class="col-xs-12 col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 box_contain">

		<!-- 第一行 -->
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-4">
				<div class="box box-solid">
					<div class="box-header">
						<h3 class="box-title">本月销售计划</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<p>
							阿狸一直站在樱花树下<br /><br /> 
							浣熊说阿狸是在被罚站<br /> 兔子说阿狸是在看树上的蚂蚁<br /><br />
							其实阿狸只是安静的等樱花 <br />
							有些简单的幸福是不是我们想象太复杂？<br />
						</p>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->
			</div>
			<!-- /.col-->

			<div class="col-xs-12 col-sm-6 col-md-4">
				<div class="box box-solid">
					<div class="box-header">
						<h3 class="box-title">销售情况</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<p>已卖出: 640件</p>
						<div class="progress">
							<div
								class="progress-bar progress-bar-danger progress-bar-striped active"
								role="progressbar" aria-valuenow="80" aria-valuemin="0"
								aria-valuemax="100" style="width: 80%"></div>
						</div>
						<p>总数量: 800件</p>
						<p>剩余量: 160件</p>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->
			</div>
			<!-- /.col-->

			<div class="col-xs-12 col-sm-12 col-md-4">
				<div class="box box-solid">
					<div class="box-header">
						<h3 class="box-title">出勤考核</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<p>24小时内可以出勤一次</p>
						<p>
							<a class="btn btn-success" href="#">出勤</a>
						</p>
						<p>
							上次出勤时间
							<code>2015-05-18 10:32:01</code>
						</p>
						<p>
							本月累计出勤
							<code>12次</code>
						</p>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row 第一行 -->

		<!-- 第二行 -->
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-6">
				<div class="box box-solid">
					<div class="box-header">
						<h3 class="box-title">到货通知</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">

						<table>
							<tr>
								<td>
									<p>
										<img
											src="<%=request.getContextPath()%>/public/image/new_item.png"
											class="img-thumbnail">
									</p>
								</td>
								<td>&nbsp;&nbsp;&nbsp;</td><!-- 占位 -->
								<td>
									<p>
										商品名： 阿狸表情包 - CRY!
									</p>
									<p>
										品质： <span class="label label-success"> AAA </span>
									</p>
									<p>
										进货价格： 
										<code>$60</code>
									</p>
									<p>
										预计盈利： 
										<code>$30</code>
									</p>
									<p>描述： 可怜的阿狸...呜呜...</p>
								</td>
							</tr>
						</table>
						
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row 第二行 -->


		<!-- END PROGRESS BARS -->
	</div>
</div>