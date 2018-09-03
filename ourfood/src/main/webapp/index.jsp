<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Ourfood</title>
<link href="style/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/public.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jqpublic.js"></script>
<script>
	
</script>
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
	<section class="Cfn">
		<aside class="C-left">
			<div class="S-time">
				服务时间：周一~周六
				<time>09:00</time>
				-
				<time>23:00</time>
			</div>
			<div class="C-time">
				<img src="Myfood/upload/dc.jpg" />
			</div>
		</aside>
		<div class="F-middle">
			<ul class="rslides f426x240">
				<li><a href="javascript:"><img src="upload/01.jpg" /></a></li>
				<li><a href="javascript:"><img src="upload/02.jpg" /></a></li>
				<li><a href="javascript:"><img src="upload/03.jpg" /></a></li>
			</ul>
		</div>
		<aside class="N-right"></aside>
	</section>
	<section class="Sfainfor">
		<article class="Sflist">
			<div id="Indexouter">
				<ul id="Indextab">
					<li class="current">点菜</li>
				</ul>
				<div id="Indexcontent">
					<ul style="display: block;">

						<div class="SCcontent">

							<a href="detailsp.jsp" target="_blank" title="">
								<figure>
									<img src="upload/05.jpg">
									<figcaption>
										<span class="title">老李家的糖醋鲤鱼</span> <span class="price"><i>￥</i>169.00</span>
									</figcaption>
								</figure>
							</a> <a href="detailsp.jsp" target="_blank" title="菜品名称">
								<figure>
									<img src="upload/04.jpg">
									<figcaption>
										<span class="title">老李家的糖醋鲤鱼</span> <span class="price"><i>￥</i>169.00</span>
									</figcaption>
								</figure>
							</a> <a href="detailsp.jsp" target="_blank" title="菜品名称">
								<figure>
									<img src="upload/06.jpg">
									<figcaption>
										<span class="title">老李家的糖醋鲤鱼</span> <span class="price"><i>￥</i>169.00</span>
									</figcaption>
								</figure>
							</a>
						</div>

						</li>
					</ul>
					<ul>

					</ul>
				</div>
			</div>
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
