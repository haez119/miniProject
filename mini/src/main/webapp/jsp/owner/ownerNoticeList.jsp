<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(function(){
	
	var chk = $(".rdio:checked").val();
	
	$(".rdio").change(function() {
		 chk = $(".rdio:checked").val();

	 });
	
	
	
	
	$('#btnUp').on('click',function(){
		
		if(chk == null) {
			alert("삭제/수정할 데이터를 선택하세요");
		} else {
			
			var no = $(".rdio:checked").parent().next().html(); // 공지번호 저장
			
			 $(location).attr('href','${pageContext.request.contextPath}/noticeUpdate.do?no=' + no);
			
		}

	});

});



</script>





<style>
.th {
	background-color: black;
	color: white;
	text-align: center;
	list-style: none;
	font-weight: bold;
	font-family: "Trebuchet MS", Dotum, Arial;
}

td {
	color: white;
	font-weight: bold;
	font-family: "Trebuchet MS", Dotum, Arial;
}

.table thead th {
    vertical-align: bottom;
    border-bottom: 2px solid #dee2e6;
    color: white;
}

</style>
</head>
<body>

<h2 align="center">${branch_name} 공지사항 리스트</h2>
<p></p><hr>

<div>
	<div align="right">
		<input type="button" class="btn btn-outline-light" id="btnUp" value="수정">
		<input type="button" class="btn btn-outline-light" id="btnDel" value="삭제">
		<p></p>
	</div>
	<table class="table table-striped" style="text-align: center; border: none;">

		<thead>
			<tr>
				<th></th>
				<th>공지번호</th>
				<th>작성일</th>
				<th>제목</th>
				<th>내용</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="l" items="${list}" varStatus="status">
				<tr class='tr'>
					<th><input type="radio" id="rdio${l.no}" name="rdio" class="rdio"></th>
					<td style='cursor: pointer'>${l.no}</td>
					<td>${l.insert_date}</td>
					<td>${l.title}</td>
					<td>${l.content}</td>

				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
	
</body>
</html>