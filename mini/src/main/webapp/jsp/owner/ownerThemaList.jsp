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
  <script src="extensions/addrbar/bootstrap-table-addrbar.js"></script>
<script src="//cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>

</head>
<body>
	<h1>테마 리스트</h1>
	<div align="center">
	<table>	
		<c:forEach items="${themaList}" var="thema" varStatus="status">
		<form id='frm' name='frm' method='post' action='themaUpdate.do' >
  		<tr><!-- 테마시작 -->
  		<td>
  			<td><img src ='${pageContext.request.contextPath}/img/${thema.thema_img}' width="150px" height="200px"  ><td>
  		</td>
  		<td>
  			<div align="left">
  			<!-- 테마이름  -->
  			<input type='text' class='thema_name' name='thema_name' value='${thema.thema_name }' readonly="readonly">
  			<c:forEach var="i" begin="1" end='${thema.level2}'>
  			<img src='${pageContext.request.contextPath}/img/kEY.png' width='20px'>
  			</c:forEach>
  			<p>${thema.thema_intro }</p><button type="submit">수정/삭제</button>
  			</div>
  			</td>
  			</tr>
  		</form>	
  			</c:forEach>
	</table>
	</div>
</body>
</html>