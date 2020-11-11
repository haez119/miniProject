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
  <script>
  function reservefunction(a,b){
	  document.getElementById('thema_no').value =a;
	  document.getElementById('time').value=b;
	  document.frm.submit();
  }
  function dateChange(a){
	  document.getElementById('sysday').value=document.getElementById('date').value;
	  document.frmInsert.submit();
  }	 
	
  </script>	
</head>
<body bgcolor='black'>
	<h1>예약 등록</h1>
		<form id='frmInsert' name='frmInsert' method='post' action='reserveInsert.do' >
		<input type="hidden" name="sysday" id="sysday">
		</form> 
	<div align="center">
		<div align="right">
		<form id='frm' name='frm' method='post' action='reserve.do' >
  			<input type='hidden' name='thema_no' id='thema_no'>
  			<input type='hidden' name='time' id='time'>
  			<c:if test="${nextday eq null }">
			<input id="date" name="date" type="date"  value="${date_day}" min="${date_day}" onchange="dateChange()">
			</c:if>
			
			<c:if test="${nextday ne null }">
			<input id="date" name="date" type="date"  value="${nextday}" min="${date_day}" onchange="dateChange()">
			</c:if>
			
			<input id="date_time" name="date_time" type="text" value="${fn:substring(date_time,0,2)}:${fn:substring(date_time,2,4)}">
			</div><!-- 날짜 선택 -->
			</form>
			
		<script>
  			
  			
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
  			<input type='text' class='thema_name' name='thema_name' value='${themaDis.thema_name }' readonly="readonly">
  			<c:forEach var="i" begin="1" end='${themaDis.level2}'>
  			<img src='${pageContext.request.contextPath}/img/kEY.png' width='20px'>
  			</c:forEach>
  			</div>
  			<c:forEach items="${themaList}" var="thema" varStatus="status">
  				
  				<c:if test ='${themaDis.thema_name==thema.thema_name}'><!-- 테마이름 같은거만 -->
  				<table>
  				<tr>
  				<td><input type="text" class="branch_name" name="branch_name" value='${thema.branch_name}' readonly="readonly"><td>
  				
  				<c:forEach items="${thema.schedulelist}" var="th" varStatus="status">
  				  <c:forEach items="${themareserveList}"  var="themareserve">
  				  <c:forEach var="list" items="${themareserve.schedulelist}" >
  				   <script>console.log("${list.thema_no}${list.time}")</script>
                   <c:if test="${th.thema_no eq list.thema_no && th.time eq list.time}">
                 
                      <script>
                      $(document).ready(function() {
                    	 $("#text${th.thema_no}${th.time}").attr("disabled", "disabled").addClass("timefail")
                         $("#btn${th.thema_no}${th.time}").attr("disabled", "disabled").addClass("reservefail").val("예약불가");
                      });
                      
                      </script>
                  
                   </c:if>
                </c:forEach>   
                </c:forEach>
  				 
  				<td>
  				<c:if test="${nextday ne null}">
  				<c:if test="${nextday>date_day }">
  				<div align ="center" id="timediv">
  				<input type='text' id='text${th.thema_no}${th.time}' class='time' name='time' value='${fn:substring(th.time,0,2)}:${fn:substring(th.time,2,4)}' readonly="readonly">
  				<input type='button' id='btn${th.thema_no}${th.time}' onclick="reservefunction('${thema.thema_no}','${th.time}')" class='reserve' value='예약가능' readonly="readonly" />
  				</div>
  				</c:if>
  				</c:if>
  				<c:if test="${nextday eq date_day}">
  				<c:if test="${th.time>date_time}">
  				<div align ="center" id="timediv">
  				<input type='text' id='text${th.thema_no}${th.time}' class='time' name='time' value='${fn:substring(th.time,0,2)}:${fn:substring(th.time,2,4)}' readonly="readonly">
  				<input type='button' id='btn${th.thema_no}${th.time}' onclick="reservefunction('${thema.thema_no}','${th.time}')" class='reserve' value='예약가능' readonly="readonly" />
  				</div>
				</c:if>
				</c:if>
				<c:if test="${nextday eq date_day}">
				<c:if test="${th.time<date_time}">
				<div align ="center" id="timediv">
  				<input type='text' class='timefail' name='time' value='${fn:substring(th.time,0,2)}:${fn:substring(th.time,2,4)}' readonly="readonly">
  				<input type='text' class='reservefail' value='예약불가' readonly="readonly"/>
  				</div>
  				</c:if>
  				</c:if>
  				
  				<c:if test="${nextday eq null}">
  				<c:if test="${th.time>date_time}">
  				<div align ="center" id="timediv">
  				<input type='text' id='text${th.thema_no}${th.time}' class='time' name='time' value='${fn:substring(th.time,0,2)}:${fn:substring(th.time,2,4)}' readonly="readonly">
  				<input type='button' id='btn${th.thema_no}${th.time}' onclick="reservefunction('${thema.thema_no}','${th.time}')" class='reserve' value='예약가능' readonly="readonly" />
  				</div>
				</c:if>
  				</c:if>
  				
  				<c:if test="${nextday eq null}">
  				<c:if test="${th.time<date_time}">
				<div align ="center" id="timediv">
  				<input type='text' class='timefail' name='time' value='${fn:substring(th.time,0,2)}:${fn:substring(th.time,2,4)}' readonly="readonly">
  				<input type='text' class='reservefail' value='예약불가'  disabled="disabled"/>
  				</div>
  				</c:if>
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