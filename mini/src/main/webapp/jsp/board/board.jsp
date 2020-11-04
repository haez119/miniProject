<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
<style>
body {
	line-height: 2em;
	font-family: "맑은 고딕";
}

ul, li {
	list-style: none;
	text-align: center;
	padding: 0;
	margin: auto;
}

#mainWrapper {
	width: 800px;
	margin: 0 auto; /*가운데 정렬*/
}

#mainWrapper>ul>li:first-child {
	text-align: center;
	font-size: 14pt;
	height: 40px;
	vertical-align: middle;
	line-height: 30px;
}

#ulTable {
	margin-top: 10px;
}

#ulTable>li:first-child>ul>li {
	background-color: #c9c9c9;
	font-weight: bold;
	text-align: center;
}

#ulTable>li>ul {
	clear: both;
	padding: 0px auto;
	position: relative;
	min-width: 40px;
}

#ulTable>li>ul>li {
	float: left;
	font-size: 10pt;
	border-bottom: 1px solid silver;
	vertical-align: baseline;
}

#ulTable>li>ul>li:first-child {
	width: 10%;
} /*No 열 크기*/
#ulTable>li>ul>li:first-child+li {
	width: 45%;
} /*제목 열 크기*/
#ulTable>li>ul>li:first-child+li+li {
	width: 20%;
} /*작성일 열 크기*/
#ulTable>li>ul>li:first-child+li+li+li {
	width: 15%;
} /*작성자 열 크기*/
#ulTable>li>ul>li:first-child+li+li+li+li {
	width: 10%;
} /*조회수 열 크기*/
#divPaging {
	clear: both;
	margin: 0 auto;
	width: 220px;
	height: 50px;
}

#divPaging>div {
	float: left;
	width: 30px;
	margin: 0 auto;
	text-align: center;
}

#liSearchOption {
	clear: both;
}

#liSearchOption>div {
	margin: 0 auto;
	margin-top: 30px;
	width: auto;
	height: 100px;
}

.left {
	text-align: left;
}
</style>
<script> 
$(document).ready(function(){
  $("#flip").click(function(){
    $("#panel").slideToggle("slow");
  });
});
</script>

</head>

<body>
	<h1 align="center">게시판 목록 페이지</h1>
	
	

	<div id="mainWrapper">

		<ul>
			<!-- 게시판 제목 -->
			<li>게시판 Title</li>

			<!-- 게시판 목록  -->
			<li>Table
				<ul id="ulTable">
					<li>
						<ul>
							<li>No</li>
							<li>제목</li>
							<li>작성일</li>
							<li>작성자</li>
							<li>조회수</li>
							
						</ul>
					</li>
					<!-- 게시물이 출력될 영역 -->
					<!--  / el표기 /   -->



		<c:forEach var="bo" items="${board}" varStatus="status">

					<li>
						<ul>
							<li>${bo.no}</li>
							<!-- <li>${bo.category}</li> -->	 
							<li>${bo.title}</li>
							<li>${bo.content}</li>
							<li>${bo.id}</li>
							<!-- <li>${bo.show}</li> -->
							<!-- <li>${bo.answer}</li> -->
						</ul>
					</li>   	
					
	</c:forEach>

					<!-- 게시판 페이징 영역 -->
					<li>
						<div id="divPaging">
							<div>◀</div>
							<div>
								<b>1</b>
							</div>
							<div>2</div>
							<div>3</div>
							<div>4</div>
							<div>5</div>
							<div>▶</div>
						</div>
					</li>

					<!-- 검색 폼 영역 -->
					<li id='liSearchOption'>
						<div>
							<select id='selSearchOption'>
								<option value='A'>제목+내용</option>
								<option value='T'>제목</option>
								<option value='C'>내용</option>
							</select> <input id='txtKeyWord' /> <input type='button' value='검색' />
						</div>
					</li>
</ul>
				</ul>
	</div>


</body>
</html>