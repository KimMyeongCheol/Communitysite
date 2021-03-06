<%@page import="pack_Member.MemberBean"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean  id="mMgr"   class="pack_Member.MemberMgr"  scope="page" />
    <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bakbak+One&family=Roboto+Slab:wght@300&display=swap" rel="stylesheet">
    
<%
String sessionUId = (String)session.getAttribute("idKey");
Vector<MemberBean> vList = mMgr.modifyMember(sessionUId);
%>  


<% if (sessionUId != null) {   // 현재 로그인 상태라면  %>
<!-- ////////////////  로그인 상태 시작  ////////////////// -->

	<%
	MemberBean memBean = (MemberBean)vList.get(0);
	String uId = memBean.getuId();
	String uPw = memBean.getuPw();
	String uName = memBean.getuName();
	String uEmail = memBean.getuEmail();
	String uGender = memBean.getuGender();
	String uBirthday = memBean.getuBirthday();
	String uZip = memBean.getuZip();
	String uAddr = memBean.getuAddr();
	String[] uHobby = memBean.getuHobby();
	
	String uJob = memBean.getuJob();
	%>



<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>회원정보 수정</title>
	<style>
	* {
		box-sizing: border-box;
	}
	div#wrap {
		width: 680px;
		padding: 10px;
		border: 1px solid #000;
		margin: 10px auto;
	}
	
	table {
		width: 100%;
		/*border: 1px solid #000;*/
	}
	th, td {
	font-size: 12px;
font-family: 'Roboto Slab', serif;
		padding: 10px 6px;
/*		border: 1px solid #000;  */
	}
	table>caption {
	
font-family: 'Roboto Slab', serif;
		font-size: 24px;
		font-weight: bold;
		padding: 20px;
		border-bottom: 2px solid #ddd;
	}
	
	tr:last-child td {
		text-align: center;
		
font-family: 'Roboto Slab', serif;
	}
	td:first-child {
		width: 120px;
		text-align: right;
		
	}
	input {
	
font-family: 'Roboto Slab', serif;
		font-size: 15px;
		padding: 4px 10px;
	}
	input.uAddr {
		border: none;
		border-bottom: 1px solid #ddd;
		outline: none;
	}
	td#hobbyArea span:hover {
		color: #555;
		cursor: pointer;
	}
	
	td.req::after {   /* 입력 필수 */
	
font-family: 'Roboto Slab', serif;
		content: " *";
		color: #f80;
		font-size: 12px;
	}
	
	button {
	
font-family: 'Roboto Slab', serif;
		font-size: 14px;
		font-weight: bold;
		padding: 4px 10px;
		cursor: pointer;
		transform: translateY(1px);
		   color: #fff;
    background-color: #2a2a2a;
	}
	
	select {
	
font-family: 'Roboto Slab', serif;
		font-size: 12px;
		transform: translateY(2px);
		
	}
	a{
	
font-family: 'Roboto Slab', serif;
	text-decoration-line : none;
	color: #ffffff;
	font-size: 12px;
	}
	h3{
	text-align: center;
	font-family: 'Roboto Slab', serif;
	font-size: 18px;
	}
	option { 
	font-family: 'Roboto Slab', serif;
	font-size: 12px;
	}
	</style>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script>
		$(function(){
			
			
			////////////// 유효성 검사 시작 //////////////////////
			
			$("#modBtn").click(function(){
				
				let uPw = $("#uPw").val();
				let uPw_Re = $("#uPw_Re").val();
				let uName = $("#uName").val();
				
				if (uPw == "") {     // 비밀번호 검사 시작
					alert("비밀번호를 입력하세요.");
					$("#uPw").focus();
				} else if (uPw != uPw_Re) {     // 비밀번호 동일검사 시작
					alert("비밀번호가 다릅니다. 확인 후 다시 입력하세요.");
					$("#uPw_Re").val("");
					$("#uPw").focus();
				} else if (uName == "") {     // 이름 검사 시작
					alert("이름을 입력하세요.");
					$("#uName").focus();
				} else {
					$("#modFrm").submit();
				}
				
			});
			////////////// 유효성 검사 끝 //////////////////////
			

			///////////  로그인 페이지 이동 시작 ////////////////
			$("#logoutBtn").click(function(){
				location.href = "logout.jsp";
			});
			
			
		});	
	</script>
</head>
<body>
	<div id="wrap">
	
	<form name="modFrm" id="modFrm" action="Member_ModProc.jsp" method="get">
	
		<table class="table table-hover">
			<h3 >회원정보 수정</h3>
			<tbody>
				<tr >
					<td class="req">아이디</td>
					<td><%=uId %></td>
					<td></td>
				</tr> 
				<tr>
					<td class="req" >패스워드</td>
					<td  >
						<input type="text" name="uPw" id="uPw" size="15" >
					</td>
					<td >변경할 패스워드</td>
				</tr>
				<tr>
					<td>패스워드 확인</td>
					<td>
						<input type="password" id="uPw_Re" size="15">
					</td>
					<td>패스워드를 확인합니다.</td>
				</tr>
				<tr>
					<td class="req">이름</td>
					<td>
						<input type="text" name="uName" id="uName" size="15"
						   value="<%=uName%>">
					</td>
					<td>수정할 이름</td>
				</tr>
				<tr>
					<td class="req">Email</td>
					<td>
						<%=uEmail%>
					</td>
					<td></td>
				</tr>
				<tr>
					<td colspan="3" style="border-bottom: 2px solid #ddd;"></td>
				</tr>				
				<tr>
					<td>성별</td>
					<td>
					 	<label>남 
					 		<input type="radio" name="uGender" value="1"   disabled
					 		<% if (uGender.equals("1")) out.print("checked"); %>>
					 	</label>
					 	<label>여 
					 		<input type="radio" name="uGender" value="0"  disabled
					 		<% if (uGender.equals("0")) out.print("checked"); %>>
					 		</label>
					</td>
				</tr>
				<tr>
					<td>생년월일</td>
					<td>
						<%=uBirthday %>
					</td>
					<td></td>
				</tr>
				<tr>
					<td>우편번호</td>
					<td><%=uZip%></td>
					<td></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><%=uAddr %></td>
					<td></td>
				</tr>
				<tr>
					<td>취미</td>
					<td id="hobbyArea">
						<label><span>인터넷</span>
							<input type="checkbox" name="uHobby"  disabled
							 value="인터넷"  <% if (uHobby[0].equals("1")) out.print("checked"); %>> 
						</label>
						<label><span>여행</span>
							<input type="checkbox" name="uHobby"   disabled
							value="여행" <% if (uHobby[1].equals("1")) out.print("checked"); %>>
						</label>
						<label><span>게임</span>
							<input type="checkbox" name="uHobby"   disabled
							value="게임" <% if (uHobby[2].equals("1")) out.print("checked"); %>>
						</label>
						<label><span>영화</span>
							<input type="checkbox" name="uHobby"   disabled
							value="영화" <% if (uHobby[3].equals("1")) out.print("checked"); %>>
						</label>
						<label><span>운동</span>
							<input type="checkbox" name="uHobby"   disabled
							value="운동"  <% if (uHobby[4].equals("1")) out.print("checked"); %>>
						</label>
					</td>
					<td></td>
				</tr>
				<tr>
					<td>직업</td>
					
					<!--  직업 수정 시작 uJob-->
					
					<td>
						<select name="uJob" id="uJob">
							<option value="0" <% if (uJob.equals("0")) out.print("selected"); %>>-선택하세요-</option>
							<option value="회사원" <% if (uJob.equals("회사원")) out.print("selected"); %>>회사원</option>
							<option value="연구전문직" <% if (uJob.equals("연구전문직")) out.print("selected"); %>>연구전문직</option>
							<option value="교수학생" <% if (uJob.equals("교수학생")) out.print("selected"); %>>교수학생</option>
							<option value="일반자영업" <% if (uJob.equals("일반자영업")) out.print("selected"); %>>일반자영업</option>
							<option value="공무원" <% if (uJob.equals("공무원")) out.print("selected"); %>>공무원</option>
							<option value="의료인" <% if (uJob.equals("의료인")) out.print("selected"); %>>의료인</option>
							<option value="법조인" <% if (uJob.equals("법조인")) out.print("selected"); %>>법조인</option>
							<option value="주부" <% if (uJob.equals("주부")) out.print("selected"); %>>주부</option>
							<option value="기타" <% if (uJob.equals("기타")) out.print("selected"); %>>기타</option>
						</select>
					</td>
					<td></td>
				</tr>
				<tr>
					<td colspan="3">
					
						<button type="button" id="modBtn"><a href="">정보수정</a></button>
									
						<button type="button" ><a href="loginpage.jsp">이전으로</a></button>
					</td>
				</tr>
			</tbody>
		</table>
	
	</form>
	<!-- document.modFrm -->


	</div>
	<!-- div#wrap -->
	
	
	<script src="script/script.js"></script>    
</body>
</html>   

<!-- ////////////////  로그인 상태 끝  ////////////////// -->


<% }  %>

	
	</script>


