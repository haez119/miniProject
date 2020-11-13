<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!-- <script src="extensions/addrbar/bootstrap-table-addrbar.js"></script> -->
<script src="//cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>


<style>
.left-box {
  color: black;
  padding-top: 30px;
  float: left;
  width: 15%;
  
}
.right-box {
  
  color: black;
  padding-top: 30px;
  float: right;
  width: 80%;
}

.table {
	border: none;
	color: black;
	width: max-content;
}

.pagination li {
	display: inline-block; 
}
.pagination {
  display: inline-block;
}

.pagination a {
  background-color: grary;
  color: white;
  float: left;
  padding: 8px 16px;
  text-decoration: none;
  transition: background-color .3s;
  border: 1px solid gray;
  margin: 0 4px;
}

.pagination a.active {
  background-color: rgb(53, 52, 52);
  color: white;
  border: 1px solid gray;
}

.pagination a:hover:not(.active) {
	background-color: lightgray;
	color: red;
	}
.table .thead-dark th {
	background-color: black;
	color: white;
	text-align: center;
	list-style: none;
	font-weight: bold;
	font-size: x-large;
	vertical-align: bottom;
    border-bottom: 2px solid #dee2e6;
    border: none;

}

.table td {
	color: white;
	text-align: center;
	border: none;
	border-top: 1px solid #dee2e6;
}
h3 {
	color: white;
}

</style>
<script>

	$(document).ready(function() {
		
		// 상세
		 $("input[name='reserv']").on('click', function() {
			 let tr = $(this).parent().parent().children();
			 let rno = tr[0].childNodes[0].nodeValue;
			 
			 $(location).attr('href','${pageContext.request.contextPath}/reserv.do?rno=' + rno);
			 
		 });
		 
		 
		 $("input[name='review']").on('click', function() {
			
			 alert("리뷰등록 페이지로 이동합니다.")
			 let tr = $(this).parent().parent().children();
			 let rno = tr[0].childNodes[0].nodeValue;
			 
			 //$(input).attr("disabled", "disabled");
			 $(location).attr('href','${pageContext.request.contextPath}/reviewInsert.do?rno=' + rno);
			
		 });
		 
		
	});

</script>
</head>
<body>
<!-- 테이블 -->
	
	<div class="left-box">
		<div style="padding: 30px;">
			<h3>내 정보</h3>
			<a href="${pageContext.request.contextPath}/memberUp.do">&nbsp;&nbsp;&nbsp;정보수정</a><br>
			<a href="${pageContext.request.contextPath}/reservation.do">&nbsp;&nbsp;&nbsp;예약정보</a><br>
		</div>
	</div>
	<div  class="right-box">
		<table id="tbl" class="table table-bordered" style="border: none;">
			<thead class="thead-dark">
			  <tr>
			    <th>예약번호</th>
				<th>지점</th>
				<th>예약일자</th>
				<th>입장시간</th>
				<th>테마</th>
				<th>인원</th>
				<th>가격</th>
				<th>결제여부</th>
				<th></th>
				<th></th>
				
			  </tr>
			</thead>
			<tbody>
			
				<c:forEach var="reserv" items="${reservs}" >
				  <tr>
				    <td>${reserv.no}</td>
				    <c:forEach var="list" items="${rlist}" >
				    	<c:if test="${reserv.no eq list.no}">
				    		<script>
				    		$(document).ready(function() {
				    			$("#btn${reserv.no}").attr("disabled", "disabled");
				    			
				    		});
				    		
				    		</script>
				    	</c:if>
				    </c:forEach>
					<td>${reserv.branch_name}</td>
					<td>${reserv.reservdate} </td>
					<td>${fn:substring(reserv.time,0,2)}시 ${fn:substring(reserv.time,2,4)}분 </td>
					<td>${reserv.thema_name} </td>
					<td>${reserv.personnel} 명</td>
					<td>${reserv.price} 원</td>
					<td>${reserv.payment}</td>
					
					<td><input class="btn btn-outline-light" name="reserv" type="button" value="상세" ></td>
					<td><input  id="btn${reserv.no}" class="btn btn-outline-light" name="review" type="button" value="리뷰"></td>
				  </tr>
				 </c:forEach>
				 
			</tbody>
		</table>
			<script>
				function goPage(p) {
					location.href="reservation.do?p="+p
				}
			</script>
		<div align="center"><my:paging paging="${paging}" jsfunc="goPage" /></div> 
	</div>
	
	
	
</body>
</html>