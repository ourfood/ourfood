<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>后台管理</title>
	<link rel="stylesheet" type="text/css" href="../easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="../easyui/themes/icon.css">
	<script type="text/javascript" src="../easyui/jquery.min.js"></script>
	<script type="text/javascript" src="../easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="../easyui/locale/easyui-lang-zh_CN.js"></script>
</head>

<style type="text/css">
	.easyui-linkbutton{
	margin-top: 5px;
	margin-left: 6px;
	width: 90%;
	align: center;	
	}
</style>

<script type="text/javascript">
	
	function addTab(title,href){
		if($('#tbs').tabs("exists",title) == false){
			var contentStr;
			if(href) {
				contentStr = '<iframe scrolling="no" frameborder="0" src="'
				+ href +'"style="width:100%;width:100%;height:100%"></iframe>';
			} else {
				contentStr = '无内容';
			}
			//添加标签页
			$('#tbs').tabs("add",{
				title : title,
				closable : true,
				content : contentStr
			});
		} else {
			//选择已经打开了的标签页
			$('#tbs').tabs('select',title);
		}
	}

</script>

<body class="easyui-layout">
	<div data-options="region:'north',border:false" style="height:60px;background:#B3DFDA;padding:10px;font-size:26px;text-align: center;">
	订餐后台管理系统
	</div>
	<div class="easyui-accordion" data-options="region:'west',split:true,title:'菜单'" style="width:150px;">
		<div title="营业数据 ">
			<a href="#" class="easyui-linkbutton" onclick="addTab(this.innerText,'/dingcan/back/resfood.jsp')" data-options="iconCls:'icon-search'">菜品管理</a>
			<a href="#" class="easyui-linkbutton" onclick="addTab(this.innerText,'/dingcan/back/orderitem.jsp')" data-options="iconCls:'icon-print'">订单查询</a>
			<a href="#" class="easyui-linkbutton" onclick="addTab(this.innerText)" data-options="iconCls:'icon-reload'">用户查询</a>
		</div>
		<div title="系统管理 ">
			<a href="#" class="easyui-linkbutton" onclick="addTab(this.innerText)" data-options="iconCls:'icon-search'">管理员查询</a>
			<a href="#" class="easyui-linkbutton" onclick="addTab(this.innerText)" data-options="iconCls:'icon-search'">文件上传</a>
		</div>
		<div title="营业统计 ">
			<a href="#" class="easyui-linkbutton" onclick="addTab(this.innerText)" data-options="iconCls:'icon-search'">日营业额</a>
			<a href="#" class="easyui-linkbutton" onclick="addTab(this.innerText)" data-options="iconCls:'icon-search'">月营业额</a>
			<a href="#" class="easyui-linkbutton" onclick="addTab(this.innerText)" data-options="iconCls:'icon-search'">年营业额</a>
		</div>
	</div>
	<div data-options="region:'east',split:true,collapsed:true,title:'East'" style="width:100px;padding:10px;">east region</div>
	<div id="tbs" class="easyui-tabs" data-options="region:'center',title:'详情'">
		<div title="管理首页 ">
		</div>
	</div>
	<div data-options="region:'south',border:false" style="height:50px;background:#A9FACD;padding:10px;font-size:14px;text-align: center;">
版权信息：衡阳市源辰信息科技有限公司
	</div>
</body>
</html>