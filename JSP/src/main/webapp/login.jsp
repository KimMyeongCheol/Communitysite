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
</head>
<body>
<!-- 헤드 레이아웃 include -->
	<jsp:include page="layout/topLayout.jsp" flush="false" />

	<!-- 세션에 정보가 없을 경우에만 로그인 창 보여주기 -->
	<%
		if (session.getAttribute("uId") == null) {
	%>
<script>
		$(function(){
			
			function fnLogin() {
				
				
				let uId = $("#uId").val().trim();
				let uPw = $("#uPw").val().trim();
				
				if (uId == "") {     // 비밀번호 검사 시작
					alert("아이디를 입력하세요.");
					$("#uId").focus();
				} else if (uPw == "") {     // 비밀번호 검사 시작
					alert("비밀번호를 입력하세요.");
					$("#uPw").focus();
				} else {					
					$("#loginFrm").submit();
				}
			}
			
			
			
			
			
			
			$("#loginBtn").click(function(){
				
				fnLogin();


			});
           
			//엔터 이벤트 적용 시작
			$("input.loginInput").keyup(function () {
				let code = event.keyCode;
				if(code ==13){
					fnLogin();
				}
			});
			
			$("#joinBtn").click(function(){   // 회원가입으로 이동				
				location.href="Member.jsp";				
			});
			
			
		});
	</script>
	<div class="container">
		<div class="row">
			<!-- 입력폼 그리드 -->
			<div class="col-lg-4">
				
	<form action="LoginProc.jsp" id="loginFrm" name="loginFrm">
					<!-- ID입력 -->
					<div class="input-group mt-3 mb-1">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">ID</span>
						</div>
						<input type="text" name="uId" class="form-control"
						
							aria-describedby="basic-addon1" required>
					</div>
					<!-- PW입력 -->
					<div class="input-group mb-2">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">PW</span>
						</div>
						<input type="password" name="uPw" class="form-control"
							
							aria-describedby="basic-addon1" required>
					</div>
					<!-- 자동 로그인 -->
					<div class="custom-control custom-checkbox mb-1">
						<input type="checkbox" class="custom-control-input"
							name="isAutoLogin" value="true" id="customCheck1"> 
							<label class="custom-control-label" for="customCheck1">로그인 유지</label>
					</div>
					<!-- 로그인 버튼 -->
					<button type="submit" class="btn btn-dark btn-sm btn-block">
						로그인 하기</button>
				</form>

				<!-- 회원가입 버튼 -->
				<button type="button" class="btn btn-dark btn-sm btn-block my-1"
					onclick="location.href='member.jsp'">회원가입 하기</button>

				<%
					}
				%>

				<!-- 회원가입 성공, 로그인 실패 등 메세지가 있으면 경고창 출력 -->
				<%
					Object obj = session.getAttribute("loginMsg");
					if (obj != null) {
						String msg = (String) obj;
				%>
				<div class="alert alert-danger text-center" role="alert"><%=msg%></div>
				<%
					// 출력한 메세지는 지워줌
						session.removeAttribute("loginMsg");
					}
				%>
			</div>

			<!-- 그림 넣을 그리드 -->
			<div class="col-lg-8"></div>
		</div>
	</div>


	<jsp:include page="layout/bottomLayout.jsp" flush="false" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="script/script.js"></script>

</body>
</html>