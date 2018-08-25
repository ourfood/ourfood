<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>订单详情</title>
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
			<span class="Font14 FontW Lineheight35 Block">订单信息：</span>
			<table class="U-order-D">
				<th>订单编号</th>
				<th>订单产品</th>
				<th>订购数量</th>
				<th>单价</th>
				<th>小计</th>
				<th>配送费用</th>
				<th>共计金额</th>
				<th>付款方式</th>
				<tr>
					<td>201409243195</td>
					<td><a href="detailsp.jsp" target="_blank" title="酸辣土豆丝">酸辣土豆丝</a></td>
					<td>1</td>
					<td>￥8.00</td>
					<td>￥8.00</td>
					<td>￥2.00</td>
					<td>￥10.00</td>
					<td>支付宝</td>
					<!--如果未付款，则显示立即付款按钮-->
					<td style="display: none;"><a href="#" target="_blank">立即付款</a></td>
				</tr>
			</table>
			<span class="Font14 FontW Lineheight35 Block">收件地址：</span>
			<form action="#">
				<table class="U-order-A">
					<tr>
						<td width="30%" align="right" class="FontW">收件地址：</td>
						<td><select name="" class="select_ssq">
								<option>湖南省</option>
						</select> <select name="" class="select_ssq">
								<option>衡阳市</option>
						</select> <select name="" class="select_ssq">
								<option>珠晖区</option>
						</select></td>
					</tr>
					<tr>
						<td width="30%" align="right" class="FontW">邮政编码：</td>
						<td><input type="text" name="" class="input_zipcode"
							value="710077" required pattern="[0-9]{6}"></td>
					</tr>
					<tr>
						<td width="30%" align="right" class="FontW">街道地址：</td>
						<td><input type="text" name="" class="input_addr"
							value="丈八北路2000集" required></td>
					</tr>
					<tr>
						<td width="30%" align="right" class="FontW">收件人姓名：</td>
						<td><input type="text" name="" class="input_name"
							value="deathghost" required></td>
					</tr>
					<tr>
						<td width="30%" align="right" class="FontW">手机号码：</td>
						<td><input type="text" name="" class="input_tel"
							value="1582551819" required pattern="[0-9]{11}"></td>
					</tr>
					<tr>
						<td width="30%" align="right" class="FontW">订单备注：</td>
						<td><input type="text" name="" class="input_mark"
							value="...速度送货哦...谢谢~"></td>
					</tr>
					<tr>
						<td width="30%" align="right"></td>
						<!--未付款订单，可以修改地址！-->
						<td><input type="submit" name="" value="确认修改地址"
							class="Submit">（未付款订单，可以修改地址！）</td>
					</tr>
				</table>
			</form>
		</article>
	</section>
	<!--End content-->
	<footer>

		<div class="copyright">
			© 版权所有 2016 <a href="" title="ourfood">ourfood</a>
		</div>
	</footer>
</body>
</html>
