<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>注册</title>
<meta name="keywords"
	content="DeathGhost,DeathGhost.cn,web前端设,移动WebApp开发" />
<meta name="description" content="DeathGhost.cn::H5 WEB前端设计开发!" />
<meta name="author" content="DeathGhost" />
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
					<a href="user_favorites.jsp" target="_blank" title="我的收藏">我的收藏</a>
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
		<form action="register.do">
			<table class="Register">
				<tr>
					<td width="40%" align="right" class="FontW">用户名：</td>
					<td><input type="text" name="username" required autofocus></td>
				</tr>
				<tr>
					<td width="40%" align="right" class="FontW">密码：</td>
					<td><input type="password" name="userpwd" required></td>
				</tr>
				<tr>
					<td width="40%" align="right" class="FontW">再次确认：</td>
					<td><input type="password" name="repwd" required></td>
				</tr>
				<tr>
					<td width="40%" align="right" class="FontW">电子邮件：</td>
					<td><input type="email" name="email" required>&nbsp;</td>
				</tr>
				<tr>
					<td width="40%" align="right" class="FontW">手机号码：</td>
					<td><input type="text" name="phone" required
						pattern="[0-9]{11}"></td>
				</tr>
				<tr>
					<td width="40%" align="right" class="FontW">验证码：</td>
					<td><input type="text" name="vcode" required> <img
						src="vcode.do" style="margin-left: 8px; vertical-align: bottom"
						width="83" height="36" onclick=""></td>

				</tr>
				<tr>
					<td width="40%" align="right"></td>
					<td><input type="submit" name="" class="Submit_b" value="注 册">(
						已经是会员，<a href="login.jsp" class="BlueA">请登录</a> )</td>
				</tr>
			</table>
		</form>
	</section>
	<!--End content-->
	<footer>

		<div class="copyright">
			© 版权所有 2016 <a href="http://www.baidu.cn" title="ourfood">ourfood</a>
		</div>
	</footer>

	<script type="text/javascript">
		
	</script>

</body>
</html>
