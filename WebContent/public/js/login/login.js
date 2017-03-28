/* 初始化本地数据事件，模拟数据库，只需要执行一次 */
$('button#initdata').click(
	function(e) {
		e.preventDefault();

		/* 清空本地数据缓存 */
		store.clear();	
		
		var json_data = {   
			'users':[ 
			    { 'userName': 'visitor', 'role':'1', 'pass': '2' },  
				{ 'userName': 'user', 'role':'2', 'pass': '2' },  
				{ 'userName': 'test', 'role':'3', 'pass': '2' },
				{ 'userName': 'admin', 'role':'4', 'pass': '2' },
				{ 'userName': 'root', 'role':'5', 'pass': '2' } 
			],
			'permission':[ 
						{ 'level': '1'},  
						{ 'level': '3'},
						{ 'level': '4'},
						{ 'level': '5'},
						{ 'level': '5'},
						{ 'level': '2'},
			]  
		};
		
		//利用LocalStorage模拟数据库
		store.set('json_data', json_data);
		
		alert("初始化完成！");
	}
);


/* 登录事件 */
$('button#mylogin').click(
	function(e) {
		e.preventDefault();
	
		//利用LocalStorage模拟数据库
		var json_data = store.get('json_data');
		
		//若没有数据则初始化
		if(json_data == undefined)
		{
			$('button#initdata').click();
			json_data = store.get('json_data');
		}
		
		//删除登录缓存
		store.remove('user');
		store.remove('role');
		
		/* 利用JQuery读入json文件，主要记录了用户数据，模拟数据库  */

		var user_arr = json_data.users;
			
		var email = document.getElementById("inputUsername").value;
		var pass = document.getElementById("inputPassword").value;
			
		var flag = false;
		/* 判断用户是否存在和密码是否正确 */
		for(var i=0;i<user_arr.length;i++)
		{
			if(email == user_arr[i].userName)
			{
				if(pass == user_arr[i].pass)
				{
					flag = true;
					var role = user_arr[i].role;
					break;		
				}
				else{//用户存在但密码不对，直接退出
					break;
				}
			}
				
		}
			
		if(flag == true)
		{
			document.getElementById("msg-show").innerHTML = 
				"<div class='alert alert-success' style='text-align: center; z-index: 999; width: 300px; left: 50%; display: block;'>\
				<h4> 成功登录!</h4>\
		        <p>即将跳转到管理页面！</p>\
		        </div>";
	
			//利用LocalStorage记录当前登录的用户和角色
			store.set('user', email);
			store.set('role', role);
			
			window.location.href="page/index.jsp";
		}
		else{
			document.getElementById("msg-show").innerHTML = 
				"<div class='alert alert-danger' style='text-align: center; z-index: 999; width: 300px; left: 50%; display: block;'>\
		        <h4> 出错了!</h4>\
		        <p>电子邮件或者密码错误！</p>\
		        </div>";
			setTimeout("document.getElementById('msg-show').innerHTML = '';",1000);
		}


	}
);





