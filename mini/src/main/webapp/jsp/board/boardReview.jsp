<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>

<script>
	function writeForm() {
		location.href = "boardreviewWrite.do"; //글등록 버튼 이동
	}
	function boardForm() {
		location.href = "board.do"; //Q&A페이지 버튼 이동
	}
</script>

<link rel="stylesheet" href="/mini/css/board.css">
<style>
</style>
</head>

<body>
	<!-- <h1>게시판</h1>  -->
	<div class="circle">
		<a><img	src="${pageContext.request.contextPath}/img/QA.jpg"
			class="rounded-circle" alt="Cinque Terre" width="80" height="60" onclick="boardForm()">
			</a>&nbsp;&nbsp;
		<a><img	src="${pageContext.request.contextPath}/img/리뷰.jpg"
			class="rounded-circle" alt="Cinque Terre" width="80" height="60"></a>
	</div>
	<br />
	<div class="table-hover">
		<table class="table" id="show">
			<thead>
				<tr>
					<th>번호</th>
					<th>지점명</th>
					<th>테마</th>
					<th>작성자</th>
					<th>이용날짜</th>
					<th>제목</th>
					<!-- <th>내용</th> -->
					<th>별점</th>
					<th>조회수</th>

				</tr>
			</thead>
			<tbody>
				<!-- 게시물이 출력될 영역 -->
				<!--  / el표기 /   -->
				<c:forEach items="${boardreview}" var="vo">
					<tr>
						<td>${vo.no}</td>
						<td>${vo.id}</td>
						<td>${vo.branch_name}</td>
						<td>${vo.thema_name}</td>
						<td>${vo.use_date}</td>
						<td><a href="${pageContext.request.contextPath}/boardreviewView.do?no=${vo.no}">${vo.title}</a></td>
						<!-- <td>${vo.content}</td> -->
						<td>${vo.star}</td>
						<td>${vo.hit}</td>
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