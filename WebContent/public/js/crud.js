/* 定义全局变量,三个文本框一个下拉列表，一个存储修改行的变量GlobalUpdateTr，标记修改状态 */
var inputPersonName = document.createElement("input");//物品名称
inputPersonName.type = "text";
var inputMoney = document.createElement("input");//金额
inputMoney.type = "text";
var inputTime = document.createElement("input");//描述
inputTime.type = "text";
var selectPlace = document.createElement("select");//仓库位置下拉列表
var GlobalUpdateTr = null;//存储修改行，标记是否修改状态


/* 窗口加载完毕触发  */
window.onload = function () {
	
    /*加载仓库信息到下拉列表*/
    loadPlaceData(getElement("selSearchPlace"));
    loadPlaceData(getElement("selAddPlace"));
    loadPlaceData(selectPlace);
    
    /* 加载初始化数据 */
    loadDetailData();
    
    /* 新增元素 */
    getElement("btnAdd").onclick = function () {
        var model = {
        		"Name": getElement("txtName").value,
        		"PlaceId": getElement("selAddPlace").value,
        		"Money": getElement("txtMoney").value,
        		"Desciption": getElement("txtDate").value
        };//创建一个新数组元素对象
        
        if(model.Name == "" || model.Money == "" || model.Desciption == "")
        {
        	document.getElementById("msg-show").innerHTML = 
				"<div class='alert alert-danger' style='text-align: center; margin : 10px; z-index: 999; width: 95%; left: 50%; display: block;'>\
	            <p>任何一项不能为空！</p>\
	            </div>";
        		
        	setTimeout("document.getElementById('msg-show').innerHTML = '';",1000);	
        	return;
        }
        
        model = arrDetailData.addModel(model);//返回新增的元素
        addTr(model);//插入新行到表显示
    };
    
    /* 查询（先删除当前界面所有行，再添加） */
    getElement("btnSearch").onclick = function () {
        var tbList = getElement("tbList");//获得表
        for (var i = tbList.rows.length - 1; i >= 1; i--) {//遍历删除表的行，从末端开始
            tbList.deleteRow(i);//删除一行
        }
        var searchId = getElement("selSearchPlace").value;//要查询的仓库位置id
        var arrSearchData = arrDetailData.getSearchData(searchId);//得到查询数据
        loadDataToTb(arrSearchData);//(加载)显示查询数据
    };


};


/* 创建仓库地点 */
var arrPlaceData = [
    { "Id": 1, "placeName": "东京1号仓库" },
    { "Id": 2, "placeName": "南京2号仓库" },
    { "Id": 3, "placeName": "西京3号仓库" },
    { "Id": 4, "placeName": "北京4号仓库" }
];


/* 根据物品id，返回物品地点,动态绑定(定义)方法 */
arrPlaceData.getPlaceById = function (id) {
    for (var i = 0; i < this.length; i++) {
        if (this[i].Id == id) {
            return this[i];
        };
    };
};


/* 详细的物品信息 */
var arrDetailData = [
    { "Id": 1, "Name": "阿狸表情包 - YES!", "PlaceId": 1, "Money": "99", "Desciption": "超级优惠" },
    { "Id": 2, "Name": "阿狸表情包 - LAUGTH", "PlaceId": 2, "Money": "66", "Desciption": "买买买" },
    { "Id": 3, "Name": "阿狸表情包 - DOUBT", "PlaceId": 3, "Money": "69", "Desciption": "亏本大甩卖" },
    { "Id": 4, "Name": "阿狸表情包 - CRY!", "PlaceId": 4, "Money": "59", "Desciption": "成本价出售" }
];


/* 根据id删除数组元素 */
arrDetailData.deleteById = function (id) {
    for (var i = 0; i < this.length; i++) {
        if (this[i].Id == id) {
            //元素前移
            for (var j = i; j < this.length - 1; j++) {
                this[j] = this[j + 1];
            };
            //数组长度--
            this.length--;
            break;
        };
    };
};


/* 更新数据，model-修改后的对象 */
arrDetailData.update = function (model) {
    for (var i = 0; i < this.length; i++) {
        if (this[i].Id == model.Id) {
            this[i] = model;
            break;
        };
    };
};


/* 新增数据，并返回新增的元素 */
var modelId=arrDetailData.length;//定义变量，存储数组元素的Id
arrDetailData.addModel = function (model) {
    modelId++;//每次添加序号++
    model.Id = modelId;//设置添加对象的Id
    this[this.length] = model;//数组元素++，在length
    return model;
};



/* 根据物品Id返回数组 */
arrDetailData.getSearchData = function (id) {
    if(id==-1){//id为-1返回所有数据
        return this;
    };
    //定义存储查询数据的数组
    var arrSearch = new Array();
    for (var i = 0; i < this.length; i++) {
        if(this[i].PlaceId==id){//判断PlaceId是否符合条件
            arrSearch[arrSearch.length]=this[i];
        };
    };
    return arrSearch;
};


/* 加载仓库位置信息,element-传入select对象 */
function loadPlaceData(element) {
    for (var i = 0; i < arrPlaceData.length; i++) {
        var opt = new Option(arrPlaceData[i].placeName, arrDetailData[i].Id);
        element.options.add(opt);
    };
};


/* 加载表数据（详细信息） */
function loadDetailData() {
    for (var i = 0; i < arrDetailData.length; i++) {
        addTr(arrDetailData[i]);
    }
};

/* 加载表数据,arr数组数据 */
function loadDataToTb(arr) {
    for (var i = 0; i < arr.length; i++) {
        addTr(arr[i]);
    };
};


/* 插入一行,model-数组元素 */
function addTr(model) {
    var tb = getElement("tbList");//获得表对象
    var tr = tb.insertRow(-1);//插入一行
    tr.insertCell(-1).innerHTML = model.Id;//插入序号列
    tr.insertCell(-1).innerHTML = model.Name;//插入名称列
    var td = tr.insertCell(-1);//插入PlaceId列
    td.setAttribute("PlaceId", model.PlaceId);//保存PlaceId到td的PlaceId属性（自定义）
    td.innerHTML = arrPlaceData.getPlaceById(model.PlaceId).placeName;//设置仓库位置名称
    tr.insertCell(-1).innerHTML = model.Money;//插入金额列
    tr.insertCell(-1).innerHTML = model.Desciption;//插入描述列
    tr.insertCell(-1).innerHTML = "<button type='button' onclick='setUpdateState(this)' class='btn btn-warning'>修改</button>&nbsp;&nbsp;" +
    		"<button type='button' onclick='deleteRow(this)' class='btn btn-info'>删除</button>";//操作列
};


/* 根据标签id获得标签对象 */
function getElement(id) {
    return document.getElementById(id);
};


/* 删除行,element-当前点击 */
function deleteRow(element) {
    if (GlobalUpdateTr != null) {//判断当前是否修改状态
        rollBack(GlobalUpdateTr);
    };
    if (!confirm("确定删除吗？")) {//确认是否要移除
        return;
    };
    var delTr = element.parentNode.parentNode;//获取删除行
    delTr.parentNode.removeChild(delTr);//移除行
    arrDetailData.deleteById(delTr.childNodes[0].innerHTML);//删除对应的数组元素
};


/* 设置当前行，为修改状态,obj-当前点击对象 */
function setUpdateState(element) {
    if (GlobalUpdateTr != null) {//判断是否已经在修改状态
        rollBack(GlobalUpdateTr);//还原
    };
    GlobalUpdateTr = element.parentNode.parentNode;//获得当前修改行
    txtToInput(GlobalUpdateTr.childNodes[1], inputPersonName);
    txtToInput(GlobalUpdateTr.childNodes[3], inputMoney);
    txtToInput(GlobalUpdateTr.childNodes[4], inputTime);
    txtToSelect(GlobalUpdateTr.childNodes[2], selectPlace);
    GlobalUpdateTr.childNodes[5].innerHTML = "<button type='button' onclick='update(this)' class='btn btn-success'>确定</button>&nbsp;&nbsp;" +
    		"<button type='button' onclick='exitUpdateState(this)' class='btn btn-info'>取消</button>";//设置操作列
};


/* 当前行设置为修改状态（文本设为文本框）(td:列，element:文本框) */
function txtToInput(td,element) {
    element.value = td.innerHTML;//设置obj的值
    td.setAttribute("oldValue",td.innerHTML);//保存td的文本值，取消修改时要取的值
    td.appendChild(element);//往列td添加obj
    if (td.childNodes[1]) {//判断是否有文本节点
        td.removeChild(td.childNodes[0]);//移除td的文本节点
    };
};


/* 当前行设置为修改状态（文本设为下拉列）(td:列，element:下拉列) */
function txtToSelect(td, element) {
    td.appendChild(element);
    td.removeChild(td.childNodes[0]);
    element.value = td.getAttribute("PlaceId");
};


/* 取消修改，恢复界面，退出修改操作状态,element-当前点击对象 */
function exitUpdateState(element) {
    var cancelTr = element.parentNode.parentNode;//取得当前行
    rollBack(cancelTr);
    //退出修改状态
    GlobalUpdateTr = null;
};


/* 还原,obj-当前修改行/之前的修改行 */
function rollBack(element) {
    element.childNodes[1].innerHTML = element.childNodes[1].getAttribute("oldValue");//恢复原来的文本值(名称)
    element.childNodes[3].innerHTML = element.childNodes[3].getAttribute("oldValue");//恢复原来的文本值(金额)
    element.childNodes[4].innerHTML = element.childNodes[4].getAttribute("oldValue");//恢复原来的文本值(描述)
    element.childNodes[2].removeChild(selectPlace);//移除下拉列
    var PlaceId = element.childNodes[2].getAttribute("PlaceId");//取得仓库位置id
    element.childNodes[2].innerHTML = arrPlaceData.getPlaceById(PlaceId).placeName;//恢复原来的文本值（仓库位置）
    element.childNodes[5].innerHTML = "<button type='button' onclick='setUpdateState(this)' class='btn btn-warning'>修改</button>&nbsp;&nbsp;" +
    		"<button type='button' onclick='deleteRow(this)' class='btn btn-info'>删除</button>";//恢复操作列
};


/* 确定修改，更新界面，更新数据，修改完毕退出修改状态,element-当前点击对象 */
function update(element) {
    var updateTr = element.parentNode.parentNode;//取得当前行
    //更新界面
    updateTr.childNodes[1].innerHTML = inputPersonName.value;
    updateTr.childNodes[3].innerHTML = inputMoney.value;
    updateTr.childNodes[4].innerHTML = inputTime.value;
    updateTr.childNodes[2].removeChild(selectPlace);
    updateTr.childNodes[2].innerHTML = arrPlaceData.getPlaceById(selectPlace.value).placeName;
    updateTr.childNodes[2].setAttribute("PlaceId", selectPlace.value);//更新PlaceId
    updateTr.childNodes[5].innerHTML = "<button type='button' onclick='setUpdateState(this)' class='btn btn-warning'>修改</button>&nbsp;&nbsp;" +
    		"<button type='button' onclick='deleteRow(this)' class='btn btn-info'>删除</button>";//恢复操作列
    //更新数据
    //下拉列表的value值就是下拉列表当前选项的value值
    var model = { "Id": updateTr.childNodes[0].innerHTML, "Name": inputPersonName.value, "PlaceId": selectPlace.value, "Money": inputMoney.value, "Desciption": inputTime.value };//创建与当前行数据对应的对象
    arrDetailData.update(model);//更新数组
    //退出修改状态
    GlobalUpdateTr = null;
};