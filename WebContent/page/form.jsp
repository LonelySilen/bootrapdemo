<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- box的风格文件 -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/public/style/form.css">


<div class="container">
	<div
		class="col-xs-12 col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 form_contain">



			<form class="form-horizontal">
				<fieldset>
								
					<legend class="legend-title">调查问卷（未完成欢迎关注我的博客）</legend>
			
					<div class="control-group">
						<label class="control-label">你喜欢上网吗</label>
						<div class="controls">
							<!-- Multiple Radios -->
							<label class="radio"> <input type="radio" value="喜欢"
								name="group1" > 喜欢
							</label> <label class="radio"> <input type="radio" value="不喜欢"
								name="group1"> 不喜欢
							</label>
						</div>

					</div>



					<div class="control-group">
						<label class="control-label">你为什么喜欢上网</label>
						<div class="controls">
							<!-- Multiple Radios -->
							<label class="radio"> <input type="radio" value="不知道"
								name="group1-1" > 不知道
							</label> <label class="radio"> <input type="radio" value="好玩"
								name="group1-1"> 好玩
							</label>
						</div>

					</div>
					
					<div class="control-group">
						<label class="control-label">你为什么不喜欢上网</label>
						<div class="controls">
							<!-- Multiple Radios -->
							<label class="radio"> <input type="radio" value="不知道"
								name="group1-2" > 不知道
							</label> <label class="radio"> <input type="radio" value="无聊"
								name="group1-2"> 无聊
							</label>
						</div>

					</div>



				</fieldset>
			</form>





	</div>
</div>