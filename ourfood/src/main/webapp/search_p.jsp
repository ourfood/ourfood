<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>搜索商品</title>
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
						target="_blank" title="我的订单">我的订单</a> <a href="cart.jsp">购物车</a>
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
		<article class="Searchlist Overflow">
			<section class="Fslmenu slt" style="margin-bottom: 5px"></section>
			<ul class="Overflow">
				<c:forEach items="${list}" var="food">
				<li><a href="detailsp.jsp" target="_blank" target="_blank"
					title="${food.fname }"><img src="images/${food.fphoto }"></a>
					<p class="P-price FontW Font16">
						<span>￥${food.fprice }</span>
					</p>
					<p class="P-title">
						<a href="detailsp.jsp" target="_blank" target="_blank"
							title="${food.fname }">${food.fname }</a>
					</p>
					<p class="P-shop Overflow">
						<span class="sa"><a href="shop.jsp" target="_blank"
							target="_blank" title="${food.fname }"></a></span>
					</p>
					</li>
				</c:forEach>
			</ul>
			<div class="TurnPage">
				<a href="#"> <span class="Prev"><i></i>首页</span>
				</a> <a href="#"><span class="PNumber">1</span></a> <a href="#"><span
					class="PNumber">2</span></a> <a href="#"> <span class="Next">最后一页<i></i></span>
				</a>
			</div>
		</article>
		<aside class="Sraside">
			<div class="bestproduct">
				<span class="Bpt Block FontW Font14">热销商品推荐</span>
				<c:forEach items="${list}" var="food">
					<ul>
						<li><a href="detailsp.jsp" title="${food.fname }"
							target="_blank"><img src="images/${food.fphoto }"></a>
							<p>

								<span class="Block FontW Font16 CorRed">￥${food.fprice }</span>
								<span class="Block Overflow"><a href="detailsp.jsp"
									title="${food.fname }" target="_blank">${food.fname }</a></span> <span
									class="Block Overflow">累计销量：<i>255</i>笔
								</span>

							</p></li>
					</ul>
				</c:forEach>
			</div>


		</aside>
	</section>
	<!--End content-->
	<footer>
		<div class="copyright">
			© 版权所有 2016 <a href="" title="ourfood">ourfood</a>
		</div>
	</footer>
</body>
</html>
