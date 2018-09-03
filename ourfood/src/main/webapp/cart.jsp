<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>我的购物车</title>

<link href="style/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/public.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jqpublic.js"></script>
<script type="text/javascript" src="js/cart.js"></script>

</head>
<body>
	<header>
		<section class="Topmenubg">
			<div class="Topnav">
				<div class="LeftNav">
					<c:if test="${sessionScope.user==null }">
						<a href="register.jsp">注册</a>/<a href="login.jsp">登录</a>
					</c:if>
					<c:if test="${sessionScope.user!=null }">
						<a href="user_center.jsp">您好,<span>${user.username }</span></a>

					</c:if>


				</div>
				<div class="RightNav">
					<a href="user_center.jsp">用户中心</a> <a href="user_orderlist.jsp"
						target="_blank" title="我的订单">我的订单</a> <a href="cart.jsp">购物车（0）</a>
				</div>
			</div>
		</section>
		<div class="Logo_search">
			<div class="Logo">
				<img src="images/logo.jpg" title="ourfood" alt="模板"> <i></i>
			</div>
			<div class="Search">
				<form action="selectFood.do" id="main_a_serach" method="POST">
					<div class="Search_nav" id="selectsearch">
						<a href="javascript:;" class="choose">食物名</a>
					</div>
					<div class="Search_area">
						<input type="search" id="fkeyword" name="fname"
							placeholder="请输入您所需查找的食物" class="searchbox" /> <input
							type="submit" class="searchbutton" value="搜 索" />
					</div>
				</form>
				<p class="hotkeywords">
					<a href="#" title="酸辣土豆丝">酸辣土豆丝</a><a href="#" title="这里是产品名称">螃蟹炒年糕</a><a
						href="#" title="这里是产品名称">牛奶炖蛋</a><a href="#" title="这里是产品名称">芝麻酱凉面</a><a
						href="#" title="这里是产品名称">滑蛋虾仁</a><a href="#" title="这里是产品名称">蒜汁茄子</a>
				</p>
			</div>
		</div>
		<nav class="menu_bg">
			<ul class="menu">
				<li><a href="index.jsp">首页</a></li>
				<li><a href="list.jsp">订餐</a></li>
			</ul>
		</nav>
	</header>
	<!--Start content-->
	<form action="#">

		<div class="gwc" style="margin: auto;">
			<table cellpadding="0" cellspacing="0" class="gwc_tb1">
				<tr>
					<td class="tb1_td3">商品</td>
					<td class="tb1_td5">数量</td>
					<td class="tb1_td6">价格</td>
					<td class="tb1_td7">操作</td>
				</tr>
			</table>
			<c:forEach items="${sc }" varStatus="i" var="s">
				<table cellpadding="0" cellspacing="0" class="gwc_tb2" id="table1">
					<tr>
						<td class="tb2_td2" id="photo"><a href="detailsp.jsp"
							target="_blank"><img src="images/${s.fphoto }" /></a></td>
						<td class="tb2_td3" id="fname"><a href="detailsp.jsp" target="_blank">${s.fname }</a></td>
						<td class="tb1_td5"><input id="num" name="" type="text"
							value="${s.cnt}"
							style="width: 40px; height: 28px; text-align: center; border: 1px solid #ccc;" />
						</td>
						<td class="tb1_td6"><label id="price" class="tot"
							style="color: #ff5500; font-size: 14px; font-weight: bold;">￥${s.fprice* s.cnt}</label></td>
						<td class="tb1_td7"><a href="deleteCart.do?fid=${s.fid }" id="delcart1">删除</a></td>
					</tr>
				</table>
			</c:forEach>

			<table cellpadding="0" cellspacing="0" class="gwc_tb3">
				<tr>

					<td class="tb3_td2 GoBack_Buy Font14"><a href="index.jsp"
						target="_blank">继续购物</a></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td class="tb3_td2"><label id="shuliang"
						style="color: #ff5500; font-size: 14px; font-weight: bold;"></label>
					</td>
					<td class="tb3_td3"><span
						style="color: #ff5500;"> <label id="zong1"
							style="color: #ff5500; font-size: 14px; font-weight: bold;"></label>
					</span></td>
					<td class="tb3_td4"><a href="set.do" class="jz2"
						id="jz2">结算</a></td>
				</tr>
			</table>
			<%-- <table cellpadding="0" cellspacing="0" class="gwc_tb2" id="table2">
				<tr>
					<td class="tb2_td1"><input type="checkbox" value="1"
						name="newslist" id="newslist-2" /></td>
					<td class="tb2_td2"><a href="detailsp.jsp" target="_blank"><img
							src="images/${shopcart.fphoto }" /></a></td>
					<td class="tb2_td3"><a href="detailsp.jsp" target="_blank">${shopcart.fname }</a></td>
					<td class="tb1_td4"><s>￥${shopcart.fprice }</s></td>
					<td class="tb1_td5"><input id="min2" name=""
						style="width: 30px; height: 30px; border: 1px solid #ccc;"
						type="button" value="-" /> <input id="text_box2" name=""
						type="text" value="1"
						style="width: 40px; height: 28px; text-align: center; border: 1px solid #ccc;" />
						<input id="add2" name=""
						style="width: 30px; height: 30px; border: 1px solid #ccc;"
						type="button" value="+" /></td>
					<td class="tb1_td6"><label id="total2" class="tot"
						style="color: #ff5500; font-size: 14px; font-weight: bold;"></label></td>
					<td class="tb1_td7"><a href="#" id="delcart2">删除</a></td>
				</tr>
			</table> --%>

		</div>

	</form>
	<footer>


		<div class="copyright">
			© 版权所有 2016 <a href="#" title="ourfood">ourfood</a>
		</div>
	</footer>
</body>
</html>
