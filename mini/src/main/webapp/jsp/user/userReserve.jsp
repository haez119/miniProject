<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약정보</title>
<style>

.left-box {
  float: left;
  width: 25%;
  height: 900px;
}
.right-box {

  float: right;
  width: 75%;
}

</style>


</head>
<body>
	<div>
		<div class="right-box">
		 <c:forEach var="reserv" items="${reservs}" >  
			<b>방탈출</b>  &nbsp; <!-- 지점명 --> <br>
			<hr>
			<b>예약일자</b> &nbsp; ${reserv.reservdate }<br><hr>
			<b>입장시간</b> &nbsp; ${reserv.time} <br><hr>			
			<b>테마명</b> &nbsp; ${reserv.thema_name }  <br><hr>			
			<b>예약자</b> &nbsp; ${reserv.name } <br><hr>			
			<b>연락처</b> &nbsp;  <br><hr>			
			<b>인원</b> &nbsp; ${reserv.personnel } 명<br><hr>			
			<b>가격</b> &nbsp; ${reserv.price } 원<br><hr>			
			<b>결제여부</b> &nbsp; ${reserv.payment } 원<br><hr>

			<%-- <td><img src="${pageContext.request.contextPath}/images/${reserv.img}"></td> --%>
		 </c:forEach> 
		</div>
		
		<div class="left-box">
			<h3>내 정보</h3>
			<a href="#">정보수정</a><br>
			<a href="#">예약정보</a><br>
		</div>
	</div>
</body>
</html>