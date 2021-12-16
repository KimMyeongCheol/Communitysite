<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
request.setCharacterEncoding("UTF-8");
String uId = (String)session.getAttribute("idKey");
%>    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="style/style.css">

<style>
img{
width: 120%;
height: 80%;
margin-top: 30px;
position: static;
}

</style>
</head>
<body>
<!-- 헤드 레이아웃 include -->
	<jsp:include page="layout/topLayout.jsp" flush="false" />

<img src="img/1.jpg" alt="img/1.jpg">


	<jsp:include page="layout/bottomLayout.jsp" flush="false" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="script/script.js"></script>

</body>
</html>