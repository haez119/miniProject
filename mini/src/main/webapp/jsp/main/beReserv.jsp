<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1 style="color: white; padding-bottom: 15px" align="center" >${vo.name}님의 예약정보</h1>
	
	<hr style="border-color: white;">
	<c:if test="${max ne null}">
		<h3 align="center"> 예약번호로 조회할 수 있습니다. </h3><p></p>
		<% session.invalidate();  %>
	</c:if>
	
		<table border="1" style=" background-color:  rgb(56, 56, 56); color: white;  padding: 15px;" class="table">
		
		 	<tr>
		 		<th style="background-color: white; color: black"><b>예약번호</b></th>
		 		<td style="background-color: white; color: black"><b>${vo.re_no}</b></td>
		 	</tr>
			<tr>
		 		<th>예약자</th>
		 		<td>${vo.name}</td>
		 	</tr>
		 	<tr>
		 		<th>지점</th>
		 		<td>${vo.branch_name}</td>
		 	</tr>
			<tr>
		 		<th>테마</th>
		 		<td>${vo.thema_name}</td>

		 	</tr>
		 	<tr>
		 		<th>예약일 &nbsp;</th>
		 		<td>${vo.reservdate}</td>
		 	</tr>
			<tr>
		 		<th>예약시간 &nbsp;</th>
		 		<td>${fn:substring(vo.time,0,2)}시 ${fn:substring(vo.time,2,4)}분</td>
		 	</tr>
		 	<tr>
		 		<th>인원 &nbsp;</th>
		 		<td> ${vo.personnel} </td>
		 	</tr>
		 	<tr>
		 		<th>연락처 &nbsp;</th>
		 		<td> ${vo.phone} </td>
		 	</tr>
		 	<tr>
		 		<th>결제금액 &nbsp;</th>
		 		<td> ${vo.price} </td>
		 	</tr>	
		 </table>
	
	
	
</body>
</html>