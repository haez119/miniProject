<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약정보</title>
<style>


.left-box {
  color: black;
  padding-top: 30px;
  float: left;
  width: 20%;
  
}
.right-box {
  
  color: black;
  padding-top: 30px;
  float: right;
  width: 75%;
}

</style>


</head>
<body>
	<div>
		<div class="right-box">
		<h2 style="color: white; padding-bottom: 15px" align="center" >${name}님의 예약정보</h2>
		<table border="1" style=" background-color:  rgb(56, 56, 56); color: white;  padding: 15px;" class="table">
		
		 <c:forEach var="reserv" items="${reservs}" >  
		 	<tr>
		 		<th>지점명 &nbsp;</th>
		 		<td>${reserv.branch_name } </td>
		 	</tr>
			<tr>
		 		<th>예약일자 &nbsp;</th>
		 		<td> ${reserv.reservdate } </td>
		 	</tr>
			<tr>
		 		<th>입장시간 &nbsp;</th>
		 		<td> ${fn:substring(reserv.time,0,2)}시 ${fn:substring(reserv.time,2,4)}분 </td>
		 	</tr>
		 	<tr>
		 		<th>테마명 &nbsp;</th>
		 		<td> ${reserv.thema_name } </td>
		 	</tr>
			<tr>
		 		<th>예약자 &nbsp;</th>
		 		<td> ${reserv.name } </td>
		 	</tr>
		 	<tr>
		 		<th>연락처 &nbsp;</th>
		 		<td> ${reserv.phone }</td>
		 	</tr>
			<tr>
		 		<th>인원 &nbsp;</th>
		 		<td> ${reserv.personnel } 명</td>
		 	</tr>	
			<tr>
		 		<th>가격 &nbsp;</th>
		 		<td> ${reserv.price } 원</td>
		 	</tr>	
			<tr>
		 		<th>결제여부 &nbsp;</th>
		 		<td> ${reserv.payment }</td>
		 	</tr>		

		 </c:forEach> 
		 </table>
		 </div>
		
		
		<div class="left-box">
		<div style="background-color: white; padding: 30px;">
			<h3>내 정보</h3>
			<a href="${pageContext.request.contextPath}/reservUp.do">정보수정</a><br>
			<a href="${pageContext.request.contextPath}/reserv.do">예약정보</a><br>
		</div>
		</div>
	</div>
</body>
</html>