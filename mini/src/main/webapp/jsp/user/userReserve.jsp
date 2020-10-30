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
		<table border="1">
			<tr>
				<th width="100">예약번호</th>
				<!-- 조인해서 지점명, 테마명 가져와야해 -->
				<th width="100">아이디</th>
				<th width="200">예약 일</th>
				<th width="200">예약 시간</th>
				<th width="150">예약 인원</th>
				<th width="150">가격</th>
				<th width="100">결제여부</th>
				<th width="100">테마번호</th>
			</tr>

			<c:forEach var="reserv" items="${reservs}" > 
				<tr>
					<td>${reserv.no }</td>
					<td>${reserv.id }</td>
					<td>${reserv.reservDate }</td>
					<td>${reserv.personnel }</td>
					<td>${reserv.price }</td>
					<td>${reserv.payment }</td>
					<td>${reserv.themaNo }</td>
					<td>${reserv.time }</td>
					<%-- <td><img src="${pageContext.request.contextPath}/images/${reserv.img}"></td> --%>
				</tr>
				
			</c:forEach>
			</table>
		</div>

	
	
	
</body>
</html>