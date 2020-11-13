<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>

<script>
	function writeForm() {
		location.href = "boardWrite.do"; //글등록 버튼 이동
	}
	function reviewForm() {
		location.href = "boardReview.do"; //리뷰페이지 버튼 이동
	}
</script>

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
	text-align: center;
	list-style: none;
	font-weight: bold;
	font-size: x-large;
}
div.searchForm {
text-align: center;
}

.text-center {
    text-align: center;
}
.pagination	{
	display: inline-block;
}
.a {
	text-align: center;
	display: block;
	    }

</style>
</head>

<body>
	<!-- <h1>게시판</h1>  -->
	<div class="circle" style="text-align: center;">
		<a><img src="${pageContext.request.contextPath}/img/QA.jpg"
			class="rounded-circle" alt="Cinque Terre" width="80" height="60">
		</a>&nbsp;&nbsp; <a><img
			src="${pageContext.request.contextPath}/img/리뷰.jpg"
			class="rounded-circle" alt="Cinque Terre" width="80" height="60"
			onclick="reviewForm()"></a>
	</div>
	<br />
	<div class="table-hover">
		<table class="table table-striped"
		style="text-align: center; border: none;">
			<thead>
				<tr>
					<th>No</th>
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
						<td>${bo.no}</td>
						<td><a href="${pageContext.request.contextPath}/boardView.do?no=${bo.no}">${bo.title}</a></td>
						<td>${bo.id}</td>						
						<td>${bo.board_date}</td>
						<td>${bo.hit}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<!-- 글등록 -->
	<c:if test="${id ne null }">
	<div align="right" id="topForm" style="margin-bottom: 10px">
		<input style="margin: 10px" class="btn btn-outline-light" type="button" value="글등록" onclick="writeForm()">
	</div>
	</c:if>
	<!-- 검색 부분 -->
	<div class="searchForm">
		<form  name="searchFrm">
		<input name="p" type="hidden" value="1" style="width:20px; text-align: center; ">
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

	<script>
			function goPage(p) {
				//location.href="memberList.do?p="+p + "";
				searchFrm.p.value = p;
				searchFrm.submit();
			}
		</script>
		<div class="a">
		<my:paging paging="${paging}" jsfunc="goPage" />
		</div>
</body>
</html>