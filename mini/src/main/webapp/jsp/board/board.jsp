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
</script>

<link rel="stylesheet" href="/mini/css/main2.css">
<style>
body {
	
}

table {
	background-color: white;
	text-align: center;
}
</style>
</head>

<body>
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
				<tr>
					<td>1</td>
					<td>Anna</td>
					<td>Pitt</td>
					<td>35</td>
					<td>New York</td>

				</tr>
			</tbody>
		</table>
	</div>
	
	<div align="left" id="topForm" style="margin-bottom: 10px">
		<input type="button" value="글등록" onclick="writeForm()">
	</div>
</body>
</html>