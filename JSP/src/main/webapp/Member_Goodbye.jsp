<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>감사 인사 페이지</title>
    <link rel="stylesheet" href="style/style.css">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <style>
    
	* {
		box-sizing: border-box;
	}
	div#wrap {
		width: 480px;
		padding: 10px;
		margin: 10px auto;
	}
	h1{
	text-align: center;
	
    font-family: 'Nanum Pen Script', cursive;
	}
	
    button	{
    margin-top: 100px ;
    margin-left: 150px;
    padding: 20px auto;
    text-align: center;
		   color: #fff;
    background-color: #2a2a2a;
    	font-size: 24px;
    	
    font-family: 'Nanum Pen Script', cursive;
    }
    
    p{
    font-size: 30px;
    font-family: 'Nanum Pen Script', cursive;
    }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script>
		$(function(){
			
			$("#mainBtn").click(function(){   // 메인으로 이동				
				location.href="index.jsp";				
			});			
			
		});
	</script>
</head>
<body>
	<div id="wrap">
		<h1>고맙습니다.</h1>
		<p>
		그동안 저희 커뮤니티를 이용해 주셔서 정말 감사합니다.
		</p>
		
		<button type="button" id="mainBtn">메인사이트로 이동</button>

	</div>
	<!-- div#wrap -->
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="script/script.js"></script>    
</body>
</html>