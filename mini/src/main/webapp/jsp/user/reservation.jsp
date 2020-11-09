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

table {
	background-color: white;
	color: black;
}
</style>
<script>

	$(document).ready(function() {
		
		 $('.reserv').on('click', function() {
			 let tr = $(this).parent().parent().children();
			 let rno = tr[0].childNodes[0].nodeValue;
			 
			 $(location).attr('href','${pageContext.request.contextPath}/reserv.do?rno=' + rno);
			 
		 });
		 
		 
		 $('.review').on('click', function() {
			
			 let id = "${id}";
			 let password = "${password}";
			 let name = "${name}";
			 
			 let tr = $(this).parent().parent().children();
			 
			 let re_name = tr[1].childNodes[0].nodeValue;
			 let date = tr[2].childNodes[0].nodeValue;
			 let thema = tr[4].childNodes[0].nodeValue;
			 
			 $.ajax({ 
				    url: "/mini/reviewInsert.do", 
				    dataType: 'json', 
				    data: {
				    	   "id": id, 
				    	   "password":password, 
				    	   "name":name, 
				    	   "re_name":re_name, 
				    	   "date":date, 
				    	   "thema":thema 
				    	   },
				    success: function(data) { 
				        alert("수정되었습니다.");
				    },
				    error:function(xhr, status, message) { 
				        alert(" status: "+status+" er:"+message);
				    }
				});

			 
			 
		 });
		
		
		
	});

</script>
</head>
<body>
<!-- 테이블 -->
	<div class="left-box">
		<div style="background-color: white; padding: 30px;">
			<h3>내 정보</h3>
			<a href="${pageContext.request.contextPath}/memberUp.do">정보수정</a><br>
			<a href="${pageContext.request.contextPath}/reservation.do">예약정보</a><br>
		</div>
	</div>
	<div  class="right-box">
		<table id="tbl" class="table table-bordered">
			<thead class="thead-dark">
			  <tr>
			    <th scope="col">예약번호</th>
				<th scope="col">지점명</th>
				<th scope="col">예약일자</th>
				<th scope="col">입장시간</th>
				<th scope="col">테마명</th>
				<th scope="col">인원</th>
				<th scope="col">가격</th>
				<th scope="col">결제여부</th>
				<th scope="col">상세보기</th>
				<th scope="col">리뷰등록</th>
			  </tr>
			</thead>
			<tbody>
			
				<c:forEach var="reserv" items="${reservs}" >
				  <tr>
				    <td>${reserv.no}</td>
					<td>${reserv.branch_name}</td>
					<td>${reserv.reservdate} </td>
					<td>${fn:substring(reserv.time,0,2)}시 ${fn:substring(reserv.time,2,4)}분 </td>
					<td>${reserv.thema_name} </td>
					<td>${reserv.personnel} 명</td>
					<td>${reserv.price} 원</td>
					<td>${reserv.payment}</td>
					<td><input class="reserv" type="button" value="상세보기" ></td>
					<td><input class="review" type="button" value="리뷰" ></td>
				  </tr>
				  
				 </c:forEach>
			</tbody>
		</table>
	
	</div>
	
	
	
</body>
</html>