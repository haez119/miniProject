<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>

<script>
	$(document).ready(function() {
		$("#flip").click(function() {
			$("#panel").slideToggle("slow");
		});
	});

	$(document).ready(function() {
		$("#flip").click(function() {
			$("#panel").slideDown("slow");
		});
	});
    function writeForm(){
        location.href="infoWriteForm.do"; //글등록 버튼 이동
    }
</script>

<link rel="stylesheet" href="/mini/css/main2.css">
<style>

</style>
</head>

<body>
	<!-- <h1>게시판</h1>  -->
	<div class="circle">
		<a href="#"><img
			src="${pageContext.request.contextPath}/img/공지.png"
			class="rounded-circle" alt="Cinque Terre" width="80" height="60"></a>&nbsp;&nbsp;
		<a href="#"><img
			src="${pageContext.request.contextPath}/img/QA.jpg"
			class="rounded-circle" alt="Cinque Terre" width="80" height="60"></a>&nbsp;&nbsp;
		<a href="#"><img
			src="${pageContext.request.contextPath}/img/리뷰.jpg"
			class="rounded-circle" alt="Cinque Terre" width="80" height="60"></a>
	</div>
	<br />
	<div class="table-hover">
		<table class="table">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>날짜</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<!-- 게시물이 출력될 영역 -->
				<!--  / el표기 /   -->
				<c:forEach var="bo" items="${board}">
					<tr>
						<td>${param.no}</td>
						<!-- <td>${bo.category}</td> -->
						<td>${bo.title}</td>
						<td>${bo.content}</td>
						<td>${bo.id}</td>
						<!-- <td>${bo.show}</td> -->
						<!-- <td>${bo.answer}</td> -->
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<!-- 글등록 -->
	<div align="right" id="topForm" style="margin-bottom: 10px">
		<input type="button" value="글등록" onclick="writeForm()">
	</div>

	<!-- 검색 부분 -->
	<div class="searchForm" id="searchForm">
		<form>
			<select name="opt">
				<option value="0">제목</option>
				<option value="1">내용</option>
				<option value="2">제목+내용</option>
				<option value="3">글쓴이</option>
			</select> <input type="text" size="20" name="condition" />&nbsp; <input
				type="submit" value="검색" />
		</form>
	</div>
	<br>
</body>
</html>