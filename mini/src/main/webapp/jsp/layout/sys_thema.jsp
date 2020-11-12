<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시스템</title>
</head>
<body>
		<div id="topMenu" style="text-align: right;">

		<a href="#">홈</a> &nbsp;|&nbsp;
		<c:if test="${name eq null }">
			<a href="${pageContext.request.contextPath}/loginPage.do">로그인</a> &nbsp;|&nbsp; 
			<a href="${pageContext.request.contextPath}/memberForm.do">회원가입</a>&nbsp;|&nbsp;
			<a href="${pageContext.request.contextPath}/aaaaa.do">비회원 조회</a>
		</c:if>
		
		<c:if test="${name ne null }">
			
			<a href="${pageContext.request.contextPath}/reservation.do">마이페이지</a> &nbsp;|&nbsp; 
			<a href="${pageContext.request.contextPath}/logout.do">로그아웃</a> &nbsp;|&nbsp; 
			<b> ${id} 회원님 </b>
			
		</c:if>

		<!-- <a href="#">마이페이지</a>  -->

	</div>
</body>
</html>