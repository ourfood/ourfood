<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/WEB-INF/mytld.tld" prefix="mt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>酸辣土豆丝 </title>
<link href="style/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/public.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jqpublic.js"></script>
<script>
$(function(){		
	$('.title-list li').click(function(){
		var liindex = $('.title-list li').index(this);
		$(this).addClass('on').siblings().removeClass('on');
		$('.menutab-wrap div.menutab').eq(liindex).fadeIn(150).siblings('div.menutab').hide();
		var liWidth = $('.title-list li').width();
		$('.shopcontent .title-list p').stop(false,true).animate({'left' : liindex * liWidth + 'px'},300);
	});
	
	$('.menutab-wrap .menutab li').hover(function(){
		$(this).css("border-color","#ff6600");
		$(this).find('p > a').css('color','#ff6600');
	},function(){
		$(this).css("border-color","#fafafa");
		$(this).find('p > a').css('color','#666666');
	});
	});
</script>
</head>
<body>
<header>
 <section class="Topmenubg">
  <div class="Topnav">
   <div class="LeftNav">
    <a href="register.jsp">注册</a>/<a href="login.jsp">登录</a>
   </div>
   <div class="RightNav">
    <a href="user_center.jsp">用户中心</a> <a href="user_orderlist.jsp" target="_blank" title="我的订单">我的订单</a> <a href="cart.jsp">购物车（0）</a> <a href="user_favorites.jsp" target="_blank" title="我的收藏">我的收藏</a>
   </div>
  </div>
 </section>
 <div class="Logo_search">
  <div class="Logo">
   <img src="images/logo.jpg" title="DeathGhost" alt="模板">
   <i></i>
  </div>
  <div class="Search"> 
    <form  action="selectFood.do" id="main_a_serach" method="POST">
   <div class="Search_nav" id="selectsearch">
    <a href="javascript:;" class="choose">食物名</a>
   </div>
   <div class="Search_area"> 
   <input type="search" id="fkeyword" name="fname" placeholder="请输入您所需查找的食物" class="searchbox" />
   <input type="submit" class="searchbutton" value="搜 索" />
   </div>
   </form>
   <p class="hotkeywords"><a href="#" title="酸辣土豆丝">酸辣土豆丝</a><a href="#" title="这里是产品名称">螃蟹炒年糕</a><a href="#" title="这里是产品名称">牛奶炖蛋</a><a href="#" title="这里是产品名称">芝麻酱凉面</a><a href="#" title="这里是产品名称">滑蛋虾仁</a><a href="#" title="这里是产品名称">蒜汁茄子</a></p>
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
<section class="slp">
 <section class="food-hd">
  <div class="foodpic">
   <img src="upload/02.jpg" id="showimg">
    <ul class="smallpic">
     <li><img src="upload/02.jpg" onmouseover="show(this)" onmouseout="hide()"></li>
    </ul>
  </div>
  <div class="foodtext">
   <div class="foodname_a">
    <h1>酸辣土豆丝</h1>
   </div>
   <div class="price_a">
    <p class="price01">价格：￥<span>59.00</span></p>
   </div>
   <ul class="Tran_infor">
     <li>
      <p class="Numerical">3</p>
      <p>月销量</p>
     </li>
     <li class="line">
      <p class="Numerical">58</p>
      <p>累计评价</p>
     </li>
     <li>
      <p class="Numerical">59</p>
      <p>送幸福积分</p>
     </li>
   </ul>
   <form action="cart.jsp">
   <div class="BuyNo">
    <span>我要买：<input type="number" name="Number" required autofocus min="1" value="1"/>份</span>
    <span>库存：3258</span>
    <div class="Buybutton">
     <input name="" type="submit" value="加入购物车" class="BuyB">
    </div>
   </div>
  </div>
  <div class="viewhistory">
   <ul class="Fsulist">
   </ul>
  </div>
 </section>
 <!--bottom content-->
 <section class="Bcontent">
  <article>
   <div class="shopcontent">
  <div class="title2 cf">
    <ul class="title-list fr cf ">
      <li class="on">详细说明</li>
      <li>评价详情（5）</li>
      <li>成交记录（5）</li>
      <p><b></b></p>
    </ul>
  </div>
  <div class="menutab-wrap">
    <!--case1-->
    <div class="menutab show">
      <div class="cont_padding">
       <img src="upload/tds.jpg">
       <p>测试信息，可删除！</p>
       <p>1. 将土豆洗净刮皮。</p>
       <p>2. 先将土豆切成整齐的大薄片这样是切出均匀的丝的要点。</p>
       <p>3. 将土豆片切成细丝。</p>
       <p>4. 用清水将切好的土豆丝泡去淀粉，（这样炒出的土豆丝清爽不粘）</p>
       <p>5. 将葱切末、辣椒剪成小段、蒜切末、红椒切丝、姜切末。</p>
      </div>
    </div>
    <!--case2-->
    <div class="menutab">
     <div class="cont_padding">
      <table class="Dcomment">
       <th width="80%">评价内容</th>
       <th width="20%" style="text-align:right">评价人</th>
       <tr>
       <td>
        还不错，速度倒是挺速度倒是挺快速度倒是挺快速度倒是挺快速度倒是挺快速度倒是挺快速度倒是挺快速度倒是挺快速度倒是挺快速度倒是挺快速度倒是挺快速度倒是挺快快...
        <time>2016-05-31 22:30:39</time>
       </td>
       <td align="right">DEATHGHOST</td>
       </tr>
      </table>
      <div class="TurnPage">
         <a href="#">
          <span class="Prev"><i></i>首页</span>
         </a>
         <a href="#"><span class="PNumber">1</span></a>
         <a href="#"><span class="PNumber">2</span></a>
         <a href="#">
         <span class="Next">最后一页<i></i></span>
        </a>
       </div>
     </div>
    </div>
    <!--case4-->
    <div class="menutab">
     <div class="cont_padding">
     
      <table width="888">
       <th width="35%">买家</th>
       <th width="20%">价格</th>
       <th width="15%">数量</th>
       <th width="30%">成交时间</th>
       <tr height="40">
        <td>d***t</td>
        <td>￥59</td>
        <td>1</td>
        <td>2014-9-18 11:13:07</td>
       </tr>
      </table>
     
     </div>
       <div class="TurnPage">
         <a href="#">
          <span class="Prev"><i></i>首页</span>
         </a>
         <a href="#"><span class="PNumber">1</span></a>
         <a href="#"><span class="PNumber">2</span></a>
         <a href="#">
         <span class="Next">最后一页<i></i></span>
        </a>
       </div>
   </div>
  </article>
  <!--ad&other infor-->
  <aside>
   <!--广告位或推荐位-->
   <a href="#" title="广告位占位图片" target="_blank"><img src="upload/2014912.jpg"></a>
  </aside>
 </section>
</section>
<!--End content-->
<footer>
<div class="copyright">© 版权所有 2016<a href="http://www.baidu.com" title="Ourfood">Ourfood</a></div>
</footer>
</body>
</html>
