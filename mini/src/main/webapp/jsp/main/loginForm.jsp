<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
	
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>

	$(function(){

		var chk = $(".login:checked").val();
		
		 $(".login").change(function() {
			 chk = $(".login:checked").val();
			 checkId(chk);
		 });
		
		 checkId(chk);

	});

	function checkId(chk) {
		
		if( chk == "member" ) {
			
			$("#frm").attr("action", "${pageContext.request.contextPath}/login.do");
			
		} else {
			
			$("#frm").attr("action", "${pageContext.request.contextPath}/ownerLogin.do");
		}
	
	}

</script>


<meta charset="UTF-8">
<title>Insert title here</title>
</head>


<body>
	<c:if test="${r == 1}">
		<script> alert("환영합니다.")</script>
	</c:if>
	<c:if test="${r == 2}">
		<script> alert("회원가입이 실패하였습니다.")</script>
	</c:if>

	<div align="right">
		<input type="radio" name="login" class="login"  value="member"  checked/>
		<label for="member">회원 로그인</label>
		<input type="radio" name="login" class="login" value="owner" />
		<label for="owner">사장 로그인</label>
	</div>
	
	<h3 align="center">로그인</h3><p></p>
		<div align="center"> 
			<form id="frm" name="frm" method="post"> <%--절대경로 사용 --%>
				<table>
					<tr>
						<th style="padding: 10px" ><h4>아이디</h4></th>
						<td style="padding: 10px" ><input type="text" id="id" name="id" width="50" value="${dotdo}"></td>
					</tr>
					<tr>
						<th style="padding: 10px" ><h4>패스워드</h4></th>
						<td style="padding: 10px" ><input type="password" id="password" name="password" width="50"></td>
					</tr>
				</table><p></p>
				
				<div style="padding-bottom: 50px;">
					<button id="btnLogin" type="submit" class="btn btn-outline-light">로그인</button>
				</div>
			</form>
		</div>

			


</body>
</html>