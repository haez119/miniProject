<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 확인</title>

</head>

<body>
	<div>
		<a href="${pageContext.request.contextPath}/eventlist.do"></a>
		<table class="table table-striped"
			style="text-align: center; border: 1px solid">

			<thead>

				<tr>

					<th style="background-color: #eeeeee; text-align: center;">지점번호</th>
					<th style="background-color: #eeeeee; text-align: center;">이벤트번호</th>
					<th style="background-color: #eeeeee; text-align: center;">이벤트명</th>
					<th style="background-color: #eeeeee; text-align: center;">이미지경로</th>
					<th style="background-color: #eeeeee; text-align: center;">이벤트내용</th>
					<th style="background-color: #eeeeee; text-align: center;">이벤트기간</th>
					<th style="background-color: #eeeeee; text-align: center;">할인율</th>
				</tr>

			</thead>
			<tbody>
				<c:forEach items="${tableList}" var="welcomeWebList"
					varStatus="status">
					<tr>
						<td><c:out value="${tableList.branch_no}" /></td>
						<td><c:out value="${tableList.event_no}" /></td>
						<td><c:out value="${tableList.event_name}" /></td>
						<td><c:out value="${tableList.img}" /></td>
						<td><c:out value="${tableList.event_content}" /></td>
						<td><c:out value="${tableList.event_term}" /></td>
						<td><c:out value="${tableList.sale}" /></td>

					</tr>

				</c:forEach>

			</tbody>
		</table>
	</div>

</body>
</html>