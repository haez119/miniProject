<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
/* 	
	$(function(){
		
		var name1 = "${vo.name}";
		
		if(name1 == null) {
			console.log(name1);
			alert("아이디 또는 비밀번호가 일치하지 않습니다.");
			
		} else {
			console.log(name1);
			alert("안녕하세요");
		}
	
	}); */

</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<c:if test="${vo.name eq null }">
			<h1>${param.id }님 로그인 실패 했습니다.</h1> <!-- vo.id -->
		</c:if>
		<c:if test="${vo.name ne null }">
			<h1>${vo.name } 님 안녕하세요?</h1>
			
		</c:if>
	</div>
	
</body>
</html>