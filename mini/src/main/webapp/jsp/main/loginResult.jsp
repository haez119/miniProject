<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<c:if test="${vo.name eq null }">
			<script>
				alert("아이디 또는 비밀번호가 일치하지 않습니다.");
				$(location).attr('href','${pageContext.request.contextPath}/loginPage.do');
			</script>
		</c:if>
		<c:if test="${vo.name ne null }">
			<script>
				alert("안녕하세요");
				$(location).attr('href','${pageContext.request.contextPath}/main.do');
			</script>
			
		</c:if>
	</div>
	
</body>
</html>