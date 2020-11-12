<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

</head>
<body>
	<h3 align="center">비회원 예약조회</h3><p></p>
		<div align="center"> 
			<form id="frm" name="frm" method="post" action="${pageContext.request.contextPath}/beLoginAction.do"> <%--절대경로 사용 --%>
				<table>
					<tr>
						<th style="padding: 10px" ><h4>예약번호</h4></th>
						<td style="padding: 10px" ><input type="text" id="id" name="id" width="50"></td>
					</tr>
					<tr>
						<th style="padding: 10px" ><h4>패스워드</h4></th>
						<td style="padding: 10px" ><input type="password" id="password" name="password" width="50"></td>
					</tr>
				</table><p></p>
				
				<div style="padding-bottom: 50px;">
					<button id="btnLogin" type="submit" class="btn btn-outline-light">조회</button>
				</div>
			</form>
		</div>
	
	
</body>
</html>