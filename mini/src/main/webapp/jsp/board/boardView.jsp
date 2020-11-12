<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function deleteFrm(){
	
	location.href="baardDelete.do?no=${vo.no}";
	
}
function listFrm(){
	
	location.href= "board.do";
	
}
</script>

<style>
table {
	margin: auto;
	hidden
}
td {
	text-align: center;
}
input {
	background-color: black;
	color: white;
	text-align: center;
}
</style>
</head>
<body>
	<form name="frm" id="frm" method="post" action="${pageContext.request.contextPath}/boardUpdate.do"
		onsubmit="return formCheck()" enctype="multipart/form-data">
		<input type="hidden" name="id" value="">
		<table width="700" border="3" bordercolor="hotpink" align="center">
	
			<tr>
				<td>번호</td>
				<td><input class="text" type="text"  name ="no" value="${vo.no}" ></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td>${id}</td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="title" value="${vo.title}"></td>
			</tr>
			<tr>
				<td>날짜</td>
				<td><input type ="text" name="board_date" value="${vo.board_date}"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><input type="text" name="content" value="${vo.content}"></td>
			</tr>
			<tr>
				<td>파일첨부</td>
				<td id="a"></td>
			</tr>
			<tr>
				<td align="center" colspan="3">
					<input style="margin: 10px" class="btn btn-outline-light" type="button" value="목록" onclick="listFrm()"> 
					<input style="margin: 10px" class="btn btn-outline-light" type="submit" value="수정"> 
					<input style="margin: 10px" class="btn btn-outline-light" type="button" value="삭제" onclick="deleteFrm()">
				</td>
			</tr>
		</table>
	</form>
	<br>
	<div class="container">
	<form id="form1"  class="form-horizontal">
		<h4 align="center">답글</h4>
		
		<div class="form-group">   	
			<input class="form-control" placeholder="글작성" name="role">
		</div>  
		
		
		<div class="form-group" style="float: right;">		
			<input type="text"  placeholder="아이디" class="" name="id" >
			<input type="text"  placeholder="비밀번호"  name="pw" >
			
			<div class="btn-group">      
				<input type="button"  class="btn btn-primary" value="등록"  id="btnInsert" /> 
				<input type="button"  class="btn btn-primary" value="수정"  id="btnUpdate" />
				<input type="button"  class="btn btn-primary" value="초기화" id="btnInit" />
		</div>
		</div>		
		
	</form>
</div>		
<hr><hr><hr><hr><hr>	
<div class="container">	
	<h4 align="center">댓글목록</h4>
	<table class="table text-center">
		<thead>
		<tr>
			<th class="text-center">아이디</th>
			<th class="text-center">날짜</th>
			<th class="text-center">내용</th>
		</tr>
		</thead>
		<tbody></tbody>
	</table>
</div>	
<br>
</body>
</html>