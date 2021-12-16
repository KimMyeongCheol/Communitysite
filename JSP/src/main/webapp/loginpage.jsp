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
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
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
<body><body class="pt-5">

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="loginpage.jsp">CM Page</a>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="loginpage.jsp">홈
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="logout.jsp">로그아웃</a></li>
					<li class="nav-item"><a class="nav-link"
						href="Member_Del.jsp">회원탈퇴</a></li>
						<li class="nav-item"><a class="nav-link"
						href="Member_Mod.jsp">정보수정</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Page Content -->
	<div class="container">
		<div class="row">

			<div class="col-lg-3">

				<h3 class="my-4 text-center">Category</h3>
				<div class="list-group mb-4">
					<a class="list-group-item list-group-item-info text-center font-weight-bold">게시판</a>
					<a href="#"
						class="list-group-item list-group-item-action text-center font-weight-bold">공지사항
						</a> <a href="#"
						class="list-group-item list-group-item-action text-center font-weight-bold">일상 잡담</a>
				</div>

			</div>
			<!-- /.col-lg-3 -->

			<div class="col-lg-9 my-4 mb-4">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="script/script.js"></script>


<img src="img/1.jpg" alt="img/1.jpg">


	<jsp:include page="layout/bottomLayout.jsp" flush="false" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="script/script.js"></script>

</body>
</html>