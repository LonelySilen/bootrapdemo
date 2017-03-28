getMenu();


/* 获取菜单权限 */
function getMenu(){
	var m_arr = document.getElementsByName("menu-ctrl");

	for(var i=0;i<m_arr.length;i++)
	{
		var table = document.getElementById("mList");
		var select_text = "<select id='m_option"+i+"'>" +
				"<option value='1'>Level1：游客(visitor)</option>" +
				"<option value='2'>Level2：用户(user)</option>" +
				"<option value='3'>Level3：测试员(test)</option>" +
				"<option value='4'>Level4：管理员(admin)</option>" +
				"<option value='5'>Level5：超级用户(su)</option>" +
				"</select>";
		
		var tr_html = "<tr>" +
				"<td>"+(i+1)+"</td>" +
				"<td>"+m_arr[i].text+"</td>" +
				"<td>"+select_text+"</td>" +
				"</tr>";
		table.innerHTML += tr_html;
	}
	
	
	/* 必须和上面分开循环 */
	for(var i=0;i<m_arr.length;i++)
	{
		var select_obj = document.getElementById("m_option"+i);
		
		var json_data = store.get('json_data');
		
		select_obj.value = json_data.permission[i].level ;	
	}
	
}


/* 保存当前权限信息 */
$('button#save_permission').click(
	function(e) {
		
		var m_arr = document.getElementsByName("menu-ctrl");
		var json_data = store.get('json_data');
		for(var i=0;i<m_arr.length;i++)
		{
			var select_obj = document.getElementById("m_option"+i);
			json_data.permission[i].level = select_obj.value ;	
		}
		
		store.set('json_data',json_data);
		
		alert("保存权限数据成功，重新登录后生效");
	}
);

/* 添加菜单 */
function addMenu(){
	var menuPage = document.getElementById("menuPage").value;
	var menuMark = /[^\.]+/.exec(menuPage);
	
	var menuIcon = document.getElementById("menuIcon").value;
	if(menuIcon=="")
	{
		alert("图标名称不能为空");
		return;
	}
	
	var menuName = document.getElementById("menuName").value;
	if(menuName=="")
	{
		alert("页面名称不能为空");
		return;
	}
	
	var menuHtml = 
	"<li>" +
	"<a href='#" + menuMark + "' data-toggle='tab' name='menu-ctrl'>" +
	"	<span class='glyphicon glyphicon-" + menuIcon + "'>&nbsp;</span>" +
	"	" + menuName +
	"</a>";
	"</li>";
	document.getElementById("myTab").innerHTML += menuHtml;
}
