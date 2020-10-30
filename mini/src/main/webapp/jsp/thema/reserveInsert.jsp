<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<h1>예약 등록</h1>
	<div class="container p-3 my-3 bg-dark text-white">
  		<table border='1'>
  		<tr>
  		<!-- 테마이미지 -->
  		<td>
  		<img src ='/mini/img/ee.jpg' width="300px" height="400px">
  		</td>
  		<!-- 테마이미지 끝 -->
  		<!-- 이용시간 -->
  		<td>
  			<table >
  			<c:forEach items="${themaList}" var="thema" varStatus="status">
  			<!-- 지점 별로 반복문 걸어줘야함-->
  			<tr><th>동성로</th>
  			<tr>
  			<!-- 지점별 이용시간 for문 돌려서 td생성후 버튼에 예약하기로 넘어갈수 있는 주소와 이용 여부를 따지는 텍스트 삽입 -->
  			<c:forEach items="${thema.schedulelist}" var="th" varStatus="status">
  			<td>
  			<div class="container p-3 my-3 border">
  			<h1>${th.time}</h1>
  			<input type='button' onclick="#" value='예약불가능'>
			</div>
			</td>
			</c:forEach>
			</c:forEach>
  			</tr>

  			
  			
  			
  			
  		
  			</table>
  		</td>
  	</tr>
  	</table>
</div>
</body>
</html>