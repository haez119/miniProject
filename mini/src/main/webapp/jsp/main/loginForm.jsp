<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
table, th, td {
	border: 1px solid;
}

table {
	width: 500px;
}

h1 {
	margin: auto;
	border: 1px solid;
	padding: 1px;
	width: 300px;
	height: 50px;
}

p {
	align: center;
	margin-top: 50px;
}

input {
	font-size: x-large;
	text-align: center;
}

</style>
<body>
	<div align="center">
		<div>
			<h1 align="center">로그인</h1>
		</div>
		<p></p>
		<div>  										<%--절대경로 사용 --%>
			<form id="frm" name="frm" action="${pageContext.request.contextPath}/login.do" method="post">
				<table>
					<tr>
						<th width="200"><h2>아이디</h2></th>
						<td><input type="text" id="id" name="id" width="50"></td>
					</tr>
					<tr>
						<th width="200"><h2>패스워드</h2></th>
						<td><input type="password" id="password" name="password" width="50"></td>
					</tr>
				</table>
				<button type="submit" class="btn btn-light" type="submit">확인</button>
				
				<button type="reset" class="btn btn-light" type="reset">취소</button>
			</form>
		</div>
	</div>
</body>
</html>