	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
    
<!DOCTYPE html>
<html>
<head>
<style>
td {
	color: white;
	font-weight: bold;
	font-family: "Trebuchet MS", Dotum, Arial;
}

.table thead th {
    vertical-align: bottom;
    border-bottom: 2px solid #dee2e6;
    color: white;
    font-size: x-large;
    font-weight: bold;
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
<br>
	<table class="table table-striped"
		style="text-align: center; border: none;">
<thead>
		  <tr>
		    <th>No</th>
		    <th>지점</th>
		    <th>제목</th>
		    <th>등록일</th>
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