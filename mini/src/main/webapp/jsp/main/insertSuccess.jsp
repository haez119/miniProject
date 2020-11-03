<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<hr>
	<div align="center">
		<div>
			<h1>${param.id }님 가입을 축하합니다.</h1>
		</div>
		<div>
			
				<table border="1">
					<tr>
						<th width="150">아이디</th>
						<td width="500">${param.id }</td>
					</tr>

					<tr>
						<th width="150">이름</th>
						<td>${param.name }</td>
					</tr>

					<tr>
						<th width="150">연락처</th>
						<td>${param.phone }</td>
					</tr>

					<tr>
						<th width="150">E-Mail</th>
						<td>${param.email }</td>
					</tr>

				</table>
			
		</div>
	</div>
</body>
</html>