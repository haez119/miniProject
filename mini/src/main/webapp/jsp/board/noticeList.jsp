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
	/* width: max-content; */
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table id="tbl" class="table table-bordered">
		<thead class="thead-dark">
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
		    <td>${list.no}</td>
			<td>${list.branch_name}</td>
			<td><a href="${pageContext.request.contextPath}/notice.do">${list.insert_date}</a></td>
			<td>${list.title}</td>
		  </tr>
			  
		 </c:forEach>
		</tbody>
	</table>
</body>
</html>