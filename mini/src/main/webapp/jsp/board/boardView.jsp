<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function deleteFrm() {
	location.href="baardDelete.do?no=${vo.no}";
}
function listFrm() {
	location.href= "board.do";
}
</script>

<style>
table {
	margin: auto;
	hidden
}

.text1 {
	background-color: black;
	color: white;
	border: none;
}

th {
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
				<th>번호</th>
				<td>&nbsp;&nbsp;<input class="text1" type="text"  name ="no" value="${vo.no}" size="50" readonly="readonly"></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>&nbsp;&nbsp;${id}</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>&nbsp;&nbsp;<input class="text1" type="text" name="title" value="${vo.title}" size="50" readonly="readonly"></td>
			</tr>
			<tr>
				<th>날짜</th>
				<td>&nbsp;&nbsp;<input class="text1" type ="text" name="board_date" value="${vo.board_date}" size="50" readonly="readonly"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td>&nbsp;&nbsp;<textarea rows="10" cols="50" class="text1" type="text" name="content" readonly="readonly">${vo.content}</textarea></td>
			</tr>
		</table>
			<div align="center">
				<td  colspan="3">
			<c:if test="${id ne null }">
					<input style="margin: 10px" class="btn btn-outline-light" type="submit" value="수정"> 
					<input style="margin: 10px" class="btn btn-outline-light" type="button" value="삭제" onclick="deleteFrm()">
			</c:if>	
					<input style="margin: 10px" class="btn btn-outline-light" type="button" value="목록" onclick="listFrm()"> 
				</td>
			</div>
	</form>
	
	<br>
<div class="container">
	<form id="form1"  class="form-horizontal">
		<h4 align="center">댓글</h4>
		<hr style="color: white;">
		<div class="form-group">   	
			<input class="form-control" placeholder="글작성" name="role">
		</div>  
		
		
		<div class="form-group" style="float: right;">		
			<input type="text"  placeholder="아이디"  name="id" >
			<input type="text"  placeholder="비밀번호"  name="pw" >
			
			<div class="btn-group">      
				<input class="btn btn-outline-light" type="button" value="등록"  id="btnInsert" /> 
				<input class="btn btn-outline-light" type="button" value="수정"  id="btnUpdate" />
				<input class="btn btn-outline-light" type="button" value="초기화" id="btnInit" />
		</div>
		</div>		
		
	</form>
</div>		
	
<div class="container">	
	<h4 align="center">댓글목록</h4>
	<table class="table text-center">
		<thead>
		<tr>
			<th>No</th>
			<th>작성자</th>
			<th>날짜</th>
			<th>내용</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="vo" items="${comment_view}">
		<tr>
			<td>${vo.rno}</td>
			<td>${vo.name}</td>
			<td>${vo.comment_date}</td>
			<td>${vo.content}</td>
		</tr>
		</c:forEach>
		</tbody>
	</table>
</div>	
<br>
</body>
</html>