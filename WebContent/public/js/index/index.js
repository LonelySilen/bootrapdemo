/*响应弹出左侧侧边栏*/
$(document).ready(function() {
	$('[data-toggle="offcanvas"]').click(function() {
		$('.row-offcanvas').toggleClass('active');
	});
});

/*响应标签页切换*/
$('#myTab li a').click(function(e) {
	e.preventDefault();

	/* 对二级菜单点击做调整 */
	var second = document.getElementById("l2_Menu");
	if($(e.target).attr('name')!= "menu-second-ctrl")
	{
		second.setAttribute("class","nav nav-list menu-second collapse");
	}
	
	var s_arr = document.getElementsByName("menu-second-ctrl");
	for(var i=0;i<s_arr.length;i++)
	{
		s_arr[i].parentNode.setAttribute("class","");
	}
	
	
	var role_level = store.get('role');

	var menu_name =$(e.target).attr('name'); 

	//需要控制的菜单
	if(menu_name == "menu-ctrl")
	{
		var m_arr = document.getElementsByName("menu-ctrl");

		var menu_value =$(e.target)[0]; 
		
		var need_role = 99;
		//找到选中菜单的索引
		for(var i=0;i<m_arr.length;i++)
		{
			if(menu_value == m_arr[i])
			{				
				var json_data = store.get('json_data');
				
				need_role = json_data.permission[i].level ;	
				
				break;
			}
		}

		//判断是否有权限
		if(role_level>=need_role)
		{
			$(this).tab('show');
		}
		else{
			alert("权限不够！");
			//刷新页面
			location.reload();
			//禁止跳转
			return false;
		}
	}	
	else{
		$(this).tab('show');
	}	
});


/*载入完成后执行*/
$(document).ready(function(){  
	var usertext = store.get('user');
	
	/* 判断登录是否过期 */
	if(usertext == undefined){
		alert("尚未登录或者登陆已过期!");
		window.location.href="../index.jsp";
		return;
	}
	
	var htmltext =  "<span class='online'></span>&nbsp;" + usertext;
	document.getElementById("user-name").innerHTML = htmltext;
});  


/* 初始化本地数据事件，模拟数据库，只需要执行一次 */
$('a#my-exit').click(
	function(e) {

		//删除登录缓存
		store.remove('user');
		store.remove('role');
		
		window.location.href="../index.jsp";

	}
);
