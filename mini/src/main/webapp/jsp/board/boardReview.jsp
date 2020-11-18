<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
	function boardForm() {
		location.href = "board.do"; //Q&A페이지 버튼 이동
	}

	$(function() {

		var bname = $('#search').val(); // 기본값은 내 지점만

		$('#search').change(
				function() {
					bname = this.value;
					console.log(bname);

					if (bname != "all") {

						$.ajax({
							url : '/mini/reviewSearch.do',
							dataType : 'json',
							data : { bname : bname },
							error : function(xhr, status, msg) {
								console.log("에러");
							},
							success : function(data) {

								$("tbody").empty();

								$.each(data, function(idx, item) {
									console.log(item.no);
									$('<tr>').append($("<td>").html(item.no))
											.append($("<td>").html(item.branch_name))
											.append($("<td>").html(item.thema_name))
											.append($("<td>").html(item.id))
											.append($("<td>").html(item.use_date))
											.append($("<td>").html(item.title))
											.append($("<td>").html(item.star))
											.append($("<td>").html(item.hit))
											.appendTo('tbody');

								});

							}
						});
					} else {
						$(location).attr('href','${pageContext.request.contextPath}/boardReview.do');
						//새로 만들어서 안붙이고 페이지 새로고침 함
						

					}

				});

	});
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

.pagination {
	display: inline-block;
}

.a {
	text-align: center;
}
</style>

</head>

<body>
	<!-- <h1>게시판</h1>  -->
	<div class="circle" style="text-align: center;">
		<a><img src="${pageContext.request.contextPath}/img/QA.jpg"
			class="rounded-circle" alt="Cinque Terre" width="80" height="60"
			onclick="boardForm()"> </a>&nbsp;&nbsp; <a><img
			src="${pageContext.request.contextPath}/img/리뷰.jpg"
			class="rounded-circle" alt="Cinque Terre" width="80" height="60"></a>
	</div>
	<br />
	
	<div class="table-hover">
	<c:if test="${branch_name ne null}">
		<div>
			<select name="search" id="search">
				<option selected="selected" value="all">모든 지점</option>
				<option value="${branch_name}">${branch_name}</option>
			</select>
		</div>
	</c:if>
		<p></p>
		<table class="table table-striped"
			style="text-align: center; border: none;">
			<thead>
				<tr>
					<th>번호</th>
					<th>지점</th>
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
						<td>${vo.branch_name}</td>
						<td>${vo.thema_name}</td>
						<td>${vo.id}</td>
						<td>${vo.use_date}</td>
						<td><a
							href="${pageContext.request.contextPath}/boardreviewView.do?no=${vo.no}">${vo.title}</a></td>
						<!-- <td>${vo.content}</td> -->
						<td>${vo.star}</td>
						<td>${vo.hit}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
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