<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 확인</title>
<style>
th {
background-color : #eeeeee;
text-align: center;
}
</style>
</head>
<body>
		<table class="table table-striped"
			style="text-align: center; border: 1px solid">

			<thead>
				<tr>
					<th>이벤트번호</th>
					<th>지점이름</th>
					<th>이벤트명</th>
					<th>이벤트내용</th>
					
				</tr>

			</thead>
			<tbody>
				<c:forEach var="list" items="${event}" varStatus="status">
					<tr>
						<td>${list.event_no }</td>
						<td>${list.branch_name}</td>
						<td>${list.event_name}</td>
						<td>${list.event_content}</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
</body>
</html>