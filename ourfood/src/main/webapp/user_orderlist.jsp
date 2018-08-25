<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>用户中心</title>
<link href="style/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/public.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jqpublic.js"></script>
</head>
<body>
	<header>
		<section class="Topmenubg">
			<div class="Topnav">
				<div class="LeftNav">
					<a href="register.jsp">注册</a>/<a href="login.jsp">登录</a>
				</div>
				<div class="RightNav">
					<a href="user_center.jsp">用户中心</a> <a href="user_orderlist.jsp"
						target="_blank" title="我的订单">我的订单</a> <a href="cart.jsp">购物车（0）</a>
				</div>
			</div>
		</section>
		<div class="Logo_search">
			<div class="Logo">
				<img src="images/logo.jpg" title="DeathGhost" alt="模板"> <i></i>
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
				<li><a href="category.jsp">积分商城</a></li>
				<li><a href="article_read.jsp">关于我们</a></li>
			</ul>
		</nav>
	</header>
	<!--Start content-->
	<section class="Psection MT20">
		<nav class="U-nav Font14 FontW">
			<ul>
				<li><i></i><a href="user_center.jsp">用户中心首页</a></li>
				<li><i></i><a href="user_orderlist.jsp">我的订单</a></li>
				<li><i></i><a href="user_address.jsp">收货地址</a></li>
				<li><i></i><a href="user_message.jsp">我的留言</a></li>
				<li><i></i><a href="user_account.jsp">账户管理</a></li>
				<li><i></i><a href="#">安全退出</a></li>
			</ul>
		</nav>
		<article class="U-article Overflow">
			<!--user order list-->
			<section>
				<table class="Myorder">
					<th class="Font14 FontW">订单编号</th>
					<th class="Font14 FontW">下单时间</th>
					<th class="Font14 FontW">收件人</th>
					<th class="Font14 FontW">订单总金额</th>
					<th class="Font14 FontW">订单状态</th>
					<th class="Font14 FontW">操作</th>
					<tr>
						<td class="FontW"><a href="user_order.jsp">201409225367</a></td>
						<td>2014-09-22 19:21:38</td>
						<td>DeathGhost</td>
						<td>￥328.00</td>
						<td>未付款,未发货</td>
						<td><a href="#">取消订单</a> | <a href="#">确认送达</a></td>
					</tr>
				</table>
				<div class="TurnPage">
					<a href="#"> <span class="Prev"><i></i>首页</span>
					</a> <a href="#"><span class="PNumber">1</span></a> <a href="#"><span
						class="PNumber">2</span></a> <a href="#"> <span class="Next">最后一页<i></i></span>
					</a>
				</div>
			</section>
		</article>
	</section>
	<!--End content-->
	<footer>
		<div class="copyright">
			© 版权所有 2016<a href="http://www.baidu.com" title="ourfood">ourfood</a>
		</div>
	</footer>
</body>
</html>
