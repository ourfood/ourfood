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
				<li><i></i><a href="#">安全退出</a></li>
			</ul>
		</nav>
		<article class="U-article Overflow">
			<!--user Coupon-->
			<section class="M-coupon Overflow">
				<ul>
					<a href="shop.jsp" class="Fontfff" target="_blank">
						<li>
							<p class="U-price FontW">
								<i>￥</i>20<span class="Font14 FontW">全店通用</span>
							</p>
							<p>发行店铺：好味来快餐店</p>
							<p>使用条件：满299元即可使用</p>
							<p>有效期：2014-09-21至2014-09-30</p>
					</li>
					</a>
				</ul>
			</section>
		</article>
	</section>
	<!--End content-->
	<div class="F-link">
		<span>友情链接：</span> <a href="http://www.deathghost.cn" target="_blank"
			title="DeathGhost">DeathGhost</a> <a
			href="http://www.17sucai.com/pins/15966.jsp" target="_blank"
			title="免费后台管理模板">绿色清爽版通用型后台管理模板免费下载</a> <a
			href="http://www.17sucai.com/pins/17567.jsp" target="_blank"
			title="果蔬菜类模板源码">HTML5果蔬菜类模板源码</a> <a
			href="http://www.17sucai.com/pins/14931.jsp" target="_blank"
			title="黑色的cms商城网站后台管理模板">黑色的cms商城网站后台管理模板</a>
	</div>
	<footer>
		<section class="Otherlink">
			<aside>
				<div class="ewm-left">
					<p>手机扫描二维码：</p>
					<img src="images/Android_ico_d.gif"> <img
						src="images/iphone_ico_d.gif">
				</div>
				<div class="tips">
					<p>客服热线</p>
					<p>
						<i>1830927**73</i>
					</p>
					<p>配送时间</p>
					<p>
						<time>09：00</time>
						~
						<time>22:00</time>
					</p>
					<p>网站公告</p>
				</div>
			</aside>
			<section>
				<div>
					<span><i class="i1"></i>配送支付</span>
					<ul>
						<li><a href="article_read.jsp" target="_blank" title="标题">支付方式</a></li>
						<li><a href="article_read.jsp" target="_blank" title="标题">配送方式</a></li>
						<li><a href="article_read.jsp" target="_blank" title="标题">配送效率</a></li>
						<li><a href="article_read.jsp" target="_blank" title="标题">服务费用</a></li>
					</ul>
				</div>
				<div>
					<span><i class="i2"></i>关于我们</span>
					<ul>
						<li><a href="article_read.jsp" target="_blank" title="标题">招贤纳士</a></li>
						<li><a href="article_read.jsp" target="_blank" title="标题">网站介绍</a></li>
						<li><a href="article_read.jsp" target="_blank" title="标题">配送效率</a></li>
						<li><a href="article_read.jsp" target="_blank" title="标题">商家加盟</a></li>
					</ul>
				</div>
				<div>
					<span><i class="i3"></i>帮助中心</span>
					<ul>
						<li><a href="article_read.jsp" target="_blank" title="标题">服务内容</a></li>
						<li><a href="article_read.jsp" target="_blank" title="标题">服务介绍</a></li>
						<li><a href="article_read.jsp" target="_blank" title="标题">常见问题</a></li>
						<li><a href="article_read.jsp" target="_blank" title="标题">网站地图</a></li>
					</ul>
				</div>
			</section>
		</section>
		<div class="copyright">
			© 版权所有 2016 DeathGhost 技术支持：<a href="http://www.deathghost.cn"
				title="DeathGhost">DeathGhost</a>
		</div>
	</footer>
</body>
</html>
