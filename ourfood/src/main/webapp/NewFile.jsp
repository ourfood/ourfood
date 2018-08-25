<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%

String path = request.getContextPath();

String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>

  <head>

    <base href="<%=basePath%>">

    

    <title>My JSP 'code.jsp' starting page</title>

    

<meta http-equiv="pragma" content="no-cache">

<meta http-equiv="cache-control" content="no-cache">

<meta http-equiv="expires" content="0">    

<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">

<meta http-equiv="description" content="This is my page">

<!--

<link rel="stylesheet" type="text/css" href="styles.css">

-->

<script src="js/jquery-1.7.2.min.js"></script>

<script type="text/javascript">

 function changeImg() {

  var imgSrc = $("#imgObj");

  var src = imgSrc.attr("src");

  //alert(src);

  imgSrc.attr("src", chgUrl(src));

  alert($("#code").val());

  //$("#code").val("123456"); 

  //<c:out value="${sessionScope.code}"/>

 }

 //时间戳  

 //为了使每次生成图片不一致，即不让浏览器读缓存，所以需要加上时间戳  

 function chgUrl(url) {

  var timestamp = (new Date()).valueOf();

  url = url.substring(0, 17);

  if ((url.indexOf("&") >= 0)) {

   url = url + "×tamp=" + timestamp;

  } else {

   url = url + "?timestamp=" + timestamp;

  }

  return url;

 }

 function refresh(obj) {

        obj.src = "code.html";

    }

</script>

  </head>

  

  <body> 

        验证码<input id="index_code" name="code" type="text" /> 

        <img id="imgObj" alt="验证码" src="code.html" onclick="javascript:changeImg();" /> 

        <!-- <a href="" onclick="changeImg()"onclick="javascript:refresh(this);">换一张</a> -->

        <input type="button" onclick="javascript:changeImg();" value="看不清换一张">

        <input type="hidden" value="123456" id="code"/>

  </body>

</html>