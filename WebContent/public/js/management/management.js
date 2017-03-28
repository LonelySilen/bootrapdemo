getUserInfo();


/* 获取用户信息 */
function getUserInfo(){
	var json_data = store.get('json_data');
	
	for(var i=0;i<json_data.users.length;i++)
	{	
		
		var table = document.getElementById("uList");
		var select_text = "<select id='u_option"+i+"'>" +
				"<option value='1'>Level1：游客(visitor)</option>" +
				"<option value='2'>Level2：用户(user)</option>" +
				"<option value='3'>Level3：测试员(test)</option>" +
				"<option value='4'>Level4：管理员(admin)</option>" +
				"<option value='5'>Level5：超级用户(su)</option>" +
				"</select>";
		
		var tr_html = "<tr>" +
				"<td>"+(i+1)+"</td>" +
				"<td>"+json_data.users[i].userName+"</td>" +
				"<td>"+select_text+"</td>" +
				"<td>"+"******"+"</td>" +
				"</tr>";
		table.innerHTML += tr_html;

	}
		
	/* 必须和上面分开循环 */
	for(var i=0;i<json_data.users.length;i++)
	{
		var role_level = json_data.users[i].role;
		var select_obj = document.getElementById("u_option"+i);
		select_obj.value = role_level ;	
	}
}
	
	
/* 保存当前用户信息 */
$('button#save_users').click(
	function(e) {
		
		var json_data = store.get('json_data');
		for(var i=0;i<json_data.users.length;i++)
		{
			var select_obj = document.getElementById("u_option"+i);
			json_data.users[i].role = select_obj.value ;	
		}
		
		store.set('json_data',json_data);
		
		alert("保存用户数据成功，重新登录后生效");
	}
);
	
	