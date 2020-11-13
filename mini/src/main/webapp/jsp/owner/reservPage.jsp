<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
					data: {day : day},
					error:function(xhr,status,msg){
						console.log("에러");
					}, success:function(data) {
						$("#tb").empty();
						
						$.each(data,function(idx,item){
							var t = item.time;
							var d = item.reservdate;
							
							$('<tr>')
							.append($("<td>").html(d.substring(0,10) ))
							.append($("<td>").html(t.substring(0,2) + "시  " + t.substring(2,4) + " 분 "  ))
							.append($("<td>").html(item.id))
							.append($("<td>").html(item.name))
							.append($("<td>").html(item.phone))
							.append($("<td>").html(item.thema_name))
							.append($("<td>").html(item.price + "원"))
							.append($("<td>").html(item.payment))
							.append($("<td>").html(item.rank))
							.appendTo('#tb'); 
						}); 
						
					}
				});
			
			
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
			    <th scope="col" >예약일</th>
				<th scope="col">예약 시간</th>
				<th scope="col" >예약자 ID</th>
				<th scope="col" >예약자 이름</th>
				<th scope="col" >예약자 연락처</th>
				<th scope="col" >예약 테마</th>
				<th scope="col" >결제금액</th>
				<th scope="col">결제여부</th>
				<th scope="col" >예약자 등급</th>
			  </tr>
			</thead>
			<tbody id="tb">
				<c:forEach var="l" items="${list}" >
				  <tr>
				  	<td id="r_date">${fn:substring(l.reservdate,0,10)}</td>
					<td id ="r_time">${fn:substring(l.time,0,2)}시 ${fn:substring(l.time,2,4)}분 </td>
					<td id ="r_id">${l.id} </td>
					<td id ="r_name">${l.name} </td>
					<td id ="r_phone">${l.phone} </td>
					<td id ="r_thema">${l.thema_name} </td>
					<td id ="r_pay" >${l.price} 원</td>
					<td id ="r_payment">${l.payment} </td>
					<td id ="r_rank">${l.rank} </td>
				  </tr>
				  
				 </c:forEach>
			</tbody>
	</table>
	
	
</body>
</html>