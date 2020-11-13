<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
	#thema_img{
	margin:10px 30px 0px 0px; 
	}
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
	
	textarea{
	background: black;
	color:white;
	border-style: none;
	}
  </style>
  <script src="extensions/addrbar/bootstrap-table-addrbar.js"></script>
<script src="//cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>

</head>
<body>
	<h1>테마 소개</h1>
	<div align="center">
	<table>	
		<c:forEach items="${themaDisList}" var="themaDis" varStatus="status">
  		<tr><!-- 테마시작 -->
  		<td>
  			<td><img  id="thema_img" src ='${pageContext.request.contextPath}/img/${themaDis.thema_img}' width="300px" height="400px"  ><td>
  		</td>
  		<td><!-- 지점별 이용시간 시작 -->
  			<div align="left">
  			<!-- 테마이름  -->
  			<input type='text' class='thema_name' name='thema_name' value='${themaDis.thema_name }' readonly="readonly">
  			<c:forEach var="i" begin="1" end='${themaDis.level2}'>
  			<img src='${pageContext.request.contextPath}/img/kEY.png' width='20px'>
  			</c:forEach>
  			<br>
  			<textarea rows="10" cols="80">${themaDis.thema_intro }</textarea><br>
  			<a href="reserveInsert.do" class="button">예약하기</a>
  			</div>
  			</td>
  			</tr>
  			
  			</c:forEach>
	</table>
	</div>
</body>
</html>