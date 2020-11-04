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
  	.thema_name {
  	width: 300px;
  	background: black;
  	font-size:40px;
	color:white;
	border-style: none;
	}
	.branch_name{
	width:100px;
	background: black;
	color:white;
	border-style: none;
	}
	#date{
	width: 300px;
	}
	.time{
	width: 80px;
	background: #1f1f1f;
	border-color:white;
	color:white;
	
	}
	.timefail{
	width: 80px;
	background: black;
	border-color:white;
	color:white;
	}
	
	.reserve{
	WIDTH: 80px; 
	HEIGHT: 20px; 
	font-size:12px;
	background: #1f1f1f;
	border-color:white;
	color:white;
	}
	.reservefail{
	WIDTH: 80px; 
	HEIGHT: 20px; 
	font-size:12px;
	background: black;
	border-color:white;
	color:white;
	}
	
	img {
	padding-bottom: 30px;
	}
	#timediv{
	WIDTH: 80px; 
	}
  </style>
  <script>
  function reservefunction(a,b){
	  document.getElementById('thema_no').value =a;
	  document.getElementById('time').value=b;
	  document.frm.submit();
  }
  </script>	
</head>
<body bgcolor='black'>
	<h1>예약 등록</h1>
	
	<div align="center">
		<div align="right">
		<form id='frm' name='frm' method='post' action='reserve.do' >
  			<input type='hidden' name='thema_no' id='thema_no'>
  			<input type='hidden' name='time' id='time'>
			<input id="date" name="date" type="date" >
			<input id="date_time" name="date_time" type="text" value="${fn:substring(date_time,0,2)}:${fn:substring(date_time,2,4)}">
			</div><!-- 날짜 선택 -->
			
		</form>
		<script>
  			document.getElementById('date').value = new Date().toISOString().substring(0, 10);
  			
		</script>
		
  		<table>
  		<c:forEach items="${themaDisList}" var="themaDis" varStatus="status">
  		<tr><!-- 테마시작 -->
  		<td>
  			<td><img src ='${pageContext.request.contextPath}/img/${themaDis.thema_img}' width="150px" height="200px"  ><td>
  		</td>
  		<td><!-- 지점별 이용시간 시작 -->
  			<div align="left">
  			<!-- 테마이름  -->
  			<input type='text' class='thema_name' name='thema_name' value='${themaDis.thema_name }'>
  			<c:forEach var="i" begin="1" end='${themaDis.level2}'>
  			<img src='${pageContext.request.contextPath}/img/kEY.png' width='20px'>
  			</c:forEach>
  			</div>
  			<c:forEach items="${themaList}" var="thema" varStatus="status">
  				
  				<c:if test ='${themaDis.thema_name==thema.thema_name}'><!-- 테마이름 같은거만 -->
  				<table>
  				<tr>
  				<td><input type="text" class="branch_name" name="branch_name" value='${thema.branch_name}'><td>
  				
  				<c:forEach items="${thema.schedulelist}" var="th" varStatus="status">
  				<td>
  				<c:if test="${th.time>date_time}">
  				<div align ="center" id="timediv">
  				<input type='text' class='time' name='time' value='${fn:substring(th.time,0,2)}:${fn:substring(th.time,2,4)}'>
  				<input type='button' onclick="reservefunction('${thema.thema_no}','${fn:substring(th.time,0,2)}:${fn:substring(th.time,2,4)}')" class='reserve' value='예약가능' />
  				</div>
				</c:if>
				<c:if test="${th.time<date_time}">
				<div align ="center" id="timediv">
  				<input type='text' class='timefail' name='time' value='${fn:substring(th.time,0,2)}:${fn:substring(th.time,2,4)}'>
  				<input type='text' class='reservefail' value='예약불가능' />
  				</div>
  				</c:if>
				</td>
  				</c:forEach>
  				
  				</tr><!-- 지점명 -->
  				
  				</table>
  				</c:if>
  			</c:forEach>
  		</td><!-- 지점별 이용시간 끝 -->
  		</tr><!-- 테마끝 -->
  		</c:forEach>
  		
  		</table>
  		
</div>
</body>
</html>