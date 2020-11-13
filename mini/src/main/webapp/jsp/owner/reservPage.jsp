<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="extensions/addrbar/bootstrap-table-addrbar.js"></script>
<script src="//cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>

	$(function(){
		
		// 아작스 써야되넴
		$("#search").on('click', function() {
			
			var day = $("#day").val();
			
			
			
			 $.ajax({
					url:'/mini/ownerSearch.do',
					dataType:'json',
					data: {"day" : day},
					error:function(xhr,status,msg){
						console.log("에러");
					}, success:function(xhr) {
						
					}
				});
			
			
			$("#tbl").html("");
			
			$("<tr>").append("<td>").html("${list}")
			.appendTo("#tbl");
			console.log("테스트");
		});
		
		
		
		

	});
	
	
	
	
</script>	






<style>
table {
	background-color: white;
	color: black;
}
</style>

</head>
<body>
	<h2 style="color: white; padding-bottom: 15px" align="center" >${branch_name} 예약 리스트</h2>
	<hr>
	<div>
		<input type="date" id="day">  &nbsp;
		<input type="button" id = "search" value="검색" class="btn btn-outline-light"><p></p>
	</div>	
	<table id="tbl" class="table table-bordered">
			<thead class="thead-dark">
			  <tr>
			    <th scope="col">예약일</th>
				<th scope="col">예약 시간</th>
				<th scope="col">예약자 ID</th>
				<th scope="col">예약자 이름</th>
				<th scope="col">예약자 연락처</th>
				<th scope="col">예약 테마</th>
				<th scope="col">결제금액</th>
				<th scope="col">결제여부</th>
				<th scope="col">예약자 등급</th>
			  </tr>
			</thead>
			<tbody id="tb">
				<c:forEach var="l" items="${list}" >
				  <tr>
				  	<td>${fn:substring(l.reservdate,0,10)}</td>
					<td>${fn:substring(l.time,0,2)}시 ${fn:substring(l.time,2,4)}분 </td>
					<td>${l.id} </td>
					<td>${l.name} </td>
					<td>${l.phone} </td>
					<td>${l.thema_name} </td>
					<td>${l.price} 원</td>
					<td>${l.payment} </td>
					<td>${l.rank} </td>
				  </tr>
				  
				 </c:forEach>
			</tbody>
	</table>
	
	
</body>
</html>