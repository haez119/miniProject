<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
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
}
td {
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
				<td><input type="text"  name ="no" value="${vo.no}" ></td>
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
					<input type="button" value="목록" onclick="listFrm()"> 
					<input type="submit" value="수정"> 
					<input type="button" value="삭제" onclick="deleteFrm()">
				</td>
			</tr>
		</table>
	</form>
	<br>
</body>
</html>