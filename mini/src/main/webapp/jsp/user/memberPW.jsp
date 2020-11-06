<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

</head>

<body>

<div align="center"  style="height: 300px; padding-top: 50px; padding-bottom: 50px">
 
 <form method="post" action="${pageContext.request.contextPath}/password.do"> 
	<h2>비밀번호를 입력하세요</h2><p></p>
	<input id="pw" name="pw" type="password"><p></p>
	<button type="submit" class="btn btn-outline-light" id="btnOk">확인</button>
	<c:if test="${test ne null}">
		<script> alert("비밀번호가 틀렸습니다."); </script>
	</c:if>
 </form>

</div>
</body>
</html>