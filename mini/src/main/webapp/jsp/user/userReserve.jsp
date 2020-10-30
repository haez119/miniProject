<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약정보</title>
</head>
<body>
	<div align="center"><h1>나의 예약 정보</h1></div>
	
	<div>
		<table class="table" border="1">
		<thead class="thead-dark">
			<tr>
				<th width="100">테마이름</th>
				<th width="100">이름</th>
				<th width="200">예약일</th>
				<th width="200">예약 시간</th>
				<th width="150">예약 인원</th>
				<th width="150">가격</th>
				<th width="100">결제여부</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach var="reserv" items="${reservs}" > 
				<tr>
					<td>${reserv.thema_name }</td>
					<td>${reserv.name }</td>
					<td>${reserv.reservDate }</td>
					<td>${reserv.time}</td>
					<td>${reserv.personnel } 명</td>
					<td>${reserv.price } 원</td>
					<td>${reserv.payment }</td>
					
					<%-- <td><img src="${pageContext.request.contextPath}/images/${reserv.img}"></td> --%>
				</tr>
			</c:forEach>
		</tbody>
			
			</table>
		</div>

	
	
	
</body>
</html>