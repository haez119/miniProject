<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

  <meta name="viewport" content="width=device-width, initial-scale=1">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link href="style.css" rel="stylesheet" type="mini/css/main.css">
  <style>
  	#thema_name {
  		width: 100%;
	}
	
	input{
  		width: 80%;
	}
  </style>	
</head>
<body bgcolor='black'>
	<h1>예약 등록</h1>
	
	<div align="center">
		<div align="right"><input id="date" name="date" type="date" ></div><!-- 날짜 선택 -->
		<script>
  			document.getElementById('date').value = new Date().toISOString().substring(0, 10);;
		</script>
		<form id='frm' name='frm' method='post' action='reserve.do' >
  		<table border='1'>
  		<c:forEach items="${themaDisList}" var="themaDis" varStatus="status">
  		<tr><!-- 테마시작 -->
  		<td>
  			<table border = '1'>
  			<tr><td><img src ='${pageContext.request.contextPath}/img/${themaDis.thema_img}' width="150px" height="200px" ><td></tr>
  			<tr><td><input class='timeinput' type='text' id='thema_name' name='thema_name' value='${themaDis.thema_name }'></td></tr>
  			</table>
  		</td>
  		<td><!-- 지점별 이용시간 시작 -->
  			<c:forEach items="${themaList}" var="thema" varStatus="status">
  				<c:if test ='${themaDis.thema_name==thema.thema_name}'><!-- 테마이름 같은거만 -->
  				<table border="1">
  				<tr>
  				<td><input type="text" id="branch_name" name="branch_name" value='${thema.branch_name}'><td>
  				<c:forEach items="${thema.schedulelist}" var="th" varStatus="status">
  				<c:if test="${th.thema_no == thema.thema_no}">
  				<td>
  				<input type='text' id='time' name='time' value='${fn:substring(th.time,0,2)}:${fn:substring(th.time,2,4)}'>
  				<input type='submit' onclick="#"  style="WIDTH: 50px; HEIGHT: 20px; font-size:10px" value='예약가능'/>
				
				</td>
				</c:if>
  				</c:forEach>
  				</tr><!-- 지점명 -->
  				
  				</table>
  				</c:if>
  			</c:forEach>
  		</td><!-- 지점별 이용시간 끝 -->
  		</tr><!-- 테마끝 -->
  		</c:forEach>
  		
  		</table>
  		</form>
</div>
</body>
</html>