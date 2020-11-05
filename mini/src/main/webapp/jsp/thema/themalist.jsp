<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	font-size:20px;
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
</head>
<body>
	<div align="center">
	<table>	
		<c:forEach items="${themaDisList}" var="themaDis" varStatus="status">
  		<tr><!-- 테마시작 -->
  		<td>
  			<td><img src ='${pageContext.request.contextPath}/img/${themaDis.thema_img}' width="150px" height="200px"  ><td>
  		</td>
  		<td><!-- 지점별 이용시간 시작 -->
  			<div align="left">
  			<!-- 테마이름  -->
  			<input type='text' class='thema_name' name='thema_name' value='${themaDis.thema_name }' readonly="readonly">
  			<c:forEach var="i" begin="1" end='${themaDis.level2}'>
  			<img src='${pageContext.request.contextPath}/img/kEY.png' width='20px'>
  			</c:forEach>
  			<p>${themaDis.thema_intro }</p>
  			</div>
  			</td>
  			</tr>
  			</c:forEach>
	</table>
	</div>
</body>
</html>