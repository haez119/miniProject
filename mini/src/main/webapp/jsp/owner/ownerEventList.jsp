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

	<table class="table table-striped"
		style="text-align: center; border: 1px solid">

		<thead>
			<tr>
				<th>이벤트번호</th>
				<th>지점명</th>
				<th>이벤트명</th>
				
				<th>시작일</th>
				<th>종료일</th>
				<th>할인율</th>
			</tr>

		</thead>
		<tbody>
			<c:forEach var="list" items="${event}" varStatus="status">
				<tr class='tr'>
					<td style='cursor: pointer'>${list.event_no }</td>
					<td>${list.branch_name}</td>
					<td>${list.event_name}</td>
					
					<td>${list.start_event}</td>
					<td>${list.last_event}</td>
					<td>${list.sale}%</td>
					<td><button type="submit">수정/삭제</button></td>
				</tr>
				<tr style="display: none" ><td colspan='3'><img id="img"
						
						src="${pageContext.request.contextPath}/img/${list.img}"
						width="400" height="300"><td colspan='3'>${list.event_content}</td></tr>
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