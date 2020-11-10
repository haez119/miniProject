<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
    
<!DOCTYPE html>
<html>
<head>
<style>
.table {
	background-color: white;
	color: black;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
	
	$(function(){
		
		$('.detail').on('click',function(){
		
			var tr = $(this).parent().parent().children();
			var bno = tr[0].childNodes[0].nodeValue;
			console.log(bno);
		    $('.detail').attr('href','${pageContext.request.contextPath}/notice.do?bno=' + bno);
		 	
		});
	});




 // href="${pageContext.request.contextPath}/notice.do"


</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table id="tbl" class="table table-bordered">
		<thead class="thead-dark">
		  <tr>
		    <th style="width: 10%">No</th>
			<th style="width: 20%">지점</th>
			<th style="width: 50%">제목</th>
			<th style="width: 20%">등록일</th>
		  </tr>
		</thead>
		<tbody>
	
		<c:forEach var="list" items="${list}" >
		  <tr>
		    <td name="b_no">${list.no}</td>
			<td>${list.branch_name}</td>
			<td><a class="detail" >${list.title}</a></td>
			<td>${list.insert_date}</td>
		  </tr>  
		 </c:forEach>
		</tbody>
	</table>
</body>
</html>