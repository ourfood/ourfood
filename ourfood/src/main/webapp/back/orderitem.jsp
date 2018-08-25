<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>订单管理</title>
<%@ include file="easyuiLink.jsp" %>
</head>
<script>
	
	
	function fmtDo(value, row, index) {
		var data = $("#orderGrid").datagrid('getData');
		var row = data.rows[index];
		if(row.deliverytime="" || row.deliverytime==null){
			return '<a href="#" onclick="delivery('+index+')"></a>';
		}
		return "";
	}
	
	
	function delivery(index){
		flag=confirm("确认送达?");
		var data = $("#orderGrid").datagrid('getData');
		var row = data.rows[index];
		if(flag){
			$.post("/dingcan/order.s", {
				op : "sureOrder",
				orderAjax:"ajax1",
				roid : row.roid
			}, function(data) {
				eval("var d=" + data);
				if (d.code == "1") {
					//成功
					$("#orderGrid").datagrid('reload');
				} else {
					alert(d.data);
				}
			});
		}
		
	}
	
	
</script>
<body>
	<table class="easyui-datagrid" title="订单管理" id="orderGrid"
			data-options="fit:true,
					rownumbers:true,
					singleSelect:true,
					collapsible:true,
					pagination:true,
					pageList:[5,10,15,20,25],
					pageSize:5,
					url:'/dingcan/order.s?op=select&ajax=ajax1',
					method:'post'
			">
		<thead>
			<tr style="text-align: center">
				<th data-options="field:'roid',width:80,align:'center'">订单编号</th>
				<th data-options="field:'userid',width:80,align:'center'">用户编号</th>
				<th data-options="field:'address',width:240,align:'center'">地址</th>
				<th data-options="field:'tel',width:110,align:'center'">电话</th>
				<th data-options="field:'ordertime',width:170,align:'center'">下单时间</th>
				<th data-options="field:'deliverytime',width:170,align:'center'">送达时间</th>
				<th data-options="field:'ps',width:108,align:'center'">备注</th>
				<th data-options="field:'status',width:80,align:'center'">状态</th>
				<th data-options="field:'doroid',width:90,align:'center',formatter:fmtDo">操作</th>
			</tr>
		</thead>
	</table>
</body>
</html>