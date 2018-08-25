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
				<span>西安市 [ <a href="#">莲湖区</a> ]
				</span>
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
			<!--user Account-->
			<section class="AccManage Overflow">
				<span class="AMTitle Block Font14 FontW Lineheight35">账户管理</span>
				<p>
					登陆邮箱：232***413@qq.com ( <a href="#" target="_blank">更换手机号码</a> )
				</p>
				<p>
					手机号码：183****5673 ( <a href="#" target="_blank">更换手机号码</a> ) ( <a
						href="#" target="_blank">解绑手机</a> )
				</p>
				<p>
					上次登陆：2014年09月22日 11:40:36( *如非本人登陆，请立即<a href="#" target="_blank">修改您的密码</a>！
					)
				</p>
				<form>
					<table>
						<tr>
							<td width="30%" align="right">*修改头像：</td>
							<td><input name="" type="file">
							<button>确定</button></td>
						</tr>
						<tr>
							<td width="30%" align="right">*昵称：</td>
							<td><input type="text" name="" value="DeathGhost"></td>
						</tr>
						<tr>
							<td width="30%" align="right">*邮箱：</td>
							<td><input type="email" name="" value="232650413@qq.com"></td>
						</tr>
						<tr>
							<td width="30%" align="right">*手机：</td>
							<td><input type="tel" name="" value="18309275673"></td>
						</tr>
						<tr>
							<td></td>
							<td><input name="" type="submit" value="保 存"></td>
						</tr>
					</table>
				</form>
			</section>
		</article>
	</section>
	<!--End content-->
	<footer>

		<div class="copyright">
			© 版权所有 2016<a href="" title="ourfood">ourfood</a>
		</div>
	</footer>
</body>
</html>
