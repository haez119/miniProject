<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>owner 이벤트 목록 리스트</title>
<style>
th {
	background-color: #eeeeee;
	text-align: center;
}

td {
	color: white;
}
</style>
</head>
<body>
	<h1>등록된 이벤트 목록</h1>
	<%-- <div align="left">
		<c:if test="${fail ne null }">
		<script> alert("테마 삭제 실패")</script>
		</c:if>
		
		<c:if test="${fail2 ne null }">
		<script> alert("테마 수정 실패")</script>
		</c:if> --%>

	<table class="table table-striped"
		style="text-align: center; border: 1px solid">
		<thead>
			<tr>
				<th>이벤트번호</th>
				<th>이벤트명</th>
				<th>시작일</th>
				<th>종료일</th>
				<th>할인율</th>
				<th>수정/삭제</th>
			</tr>

		</thead>
		<tbody>
			<c:forEach var="list" items="${event}" varStatus="status">
				<form id='frm' name='frm' method='post'
					action='${pageContext.request.contextPath}/eventUpdate.do'>
				<tr class='tr'>
					<td style='cursor: pointer'  value="${list.event_no}">${list.event_no}
					<input type="hidden" name ="event_no" value="${list.event_no}">
					</td>
					<td>${list.event_name}<input type="hidden" name="event_name" value="${list.event_name}"/>
					</td>
					<td><input type="hidden" name="start_event"
						value="${list.start_event}">${list.start_event}</td>
					<td><input type="hidden" name="last_event"
						value="${list.last_event}">${list.last_event}<input type="hidden" name="event_term"
						value="${list.event_term}"></td>
						
					<td><input type="hidden" name="sale" value="${list.sale}">${list.sale}%</td>
					<td><button type="submit">수정/삭제</button></td>
				</tr>
				<tr style="display: none">
					<td colspan='3'><img id="img"
						src="${pageContext.request.contextPath}/img/${list.img}"
						width="400" height="300">
					<td colspan='3'><input type="hidden" name="event_content" value="${list.event_content}">${list.event_content}</td>
				</tr>
				</form>
			</c:forEach>
		</tbody>
	</table>

	<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
	<script type="text/javascript">
		$('.tr').click(function() {

			$(this).next().toggle();

		});
	</script>
</body>
</html>