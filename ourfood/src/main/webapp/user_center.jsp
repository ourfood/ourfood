<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
				<li><i></i><a href="logout.do">安全退出</a></li>
			</ul>
		</nav>
		<article class="U-article Overflow">
			<!--"引用“user_page/user_index.jsp”"-->
			<section class="usercenter">
				<span class="Weltitle Block Font16 CorRed FontW Lineheight35">Welcome欢迎光临！</span>
				<div class="U-header MT20 Overflow">
					<img src="upload/testuser.jpg">
					<p class="Font14 FontW">DeathGhost 欢迎您回到 用户中心！</p>
					<p class="Font12">
						您的上一次登录时间:
						<time> 2016-05-18 14:20:04</time>
					</p>
				</div>
				<ul class="s-States Overflow FontW" id="Lbn">
					<li class="Font14 FontW">幸福业务在线提醒：</li>
					<li><a href="#">待付款( 0 )</a></li>
					<li><a href="#">待发货( 0 )</a></li>
					<li><a href="#">待收货( 0 )</a></li>
					<li><a href="#">待评价( 0 )</a></li>
				</ul>
			</section>
		</article>
	</section>
	<!--End content-->
	<footer>
		<
		<div class="copyright">
			© 版权所有 2016<a href="http://www.baidu.cn" title="ourfood">ourfood</a>
		</div>
	</footer>
</body>
</html>
