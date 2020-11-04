<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

.left-box {
  color: black;
  padding-top: 30px;
  float: left;
  width: 20%;
  
}
.right-box {
  
  color: black;
  padding-top: 30px;
  float: right;
  width: 75%;
}

</style>
</head>
<body>

	<div class="left-box">
		<div style="background-color: white; padding: 30px;">
				<h3>내 정보</h3>
				<a href="${pageContext.request.contextPath}/reservUp.do">정보수정</a><br>
				<a href="${pageContext.request.contextPath}/reservation.do">예약정보</a><br>
		</div>
	</div>
	
<form  name="frm" action="${pageContext.request.contextPath}/reUpdate.do" method="post">

	<div class="right-box">
		<h2 style="color: white; padding-bottom: 15px" align="center" >${name}님의 회원정보</h2>
		<table border="1" style=" background-color:  rgb(56, 56, 56); color: white;  padding: 15px;" class="table">
		
		 	<tr>
		 		<th>아이디</th>
		 		<td>${id} </td>
		 	</tr>
			<tr>
		 		<th>비밀번호</th>
		 		<td><input name="password" type="password" value=" ${vo.password}"></td>
		 	</tr>
		 	<tr>
		 		<th>이름</th>
		 		<td><input name="phone" type="text" value=" ${name}"></td>
		 	</tr>
			<tr>
		 		<th>연락처</th>
		 		<td><input name="phone" type="text" value=" ${vo.phone}"></td>

		 	</tr>
		 	<tr>
		 		<th>이메일 &nbsp;</th>
		 		<td><input name="email" type="text" value=" ${vo.email}"></td>
		 	</tr>
			<tr>
		 		<th>등급 &nbsp;</th>
		 		<td> ${vo.rank} </td>
		 	</tr>	
		 </table>
		 <button class="btn btn-outline-light" id="save" type="submit">수정</button>
		 <button class="btn btn-outline-light" id="cancel" type="reset">취소</button>

	</div>
</form>

</body>
</html>