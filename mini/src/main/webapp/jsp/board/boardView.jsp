<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>
	function listFrm(){
		location.href="board.do";
	}
	
	function deleteFrm(){
		location.href="${pageContext.request.contextPath}/boardUpdate.do?No=${bo.no}";
		
	}
	function updateFrm(){
		location.href="#";
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
	<form name="frm" id="frm" method="post" action="boardInsert.do"
		onsubmit="return formCheck()" enctype="multipart/form-data">
		<input type="hidden" name="id" value="">
		<table width="700" border="3" bordercolor="hotpink" align="center">
	
			<tr>
				<td>번호</td>
				<td id="a">${vo.no}</td>
			</tr>
			<tr>
				<td>작성자</td>
				<td id="a">${vo.id}</td>
			</tr>
			<tr>
				<td>제목</td>
				<td id="a">${vo.title}</td>
			</tr>
			<tr>
				<td>날짜</td>
				<td id="a">${vo.board_date}</td>
			</tr>
			<tr>
				<td>내용</td>
				<td id="a">${vo.content}</td>
			</tr>
			<tr>
				<td>파일첨부</td>
				<td id="a"></td>
			</tr>
			<tr>
				<td align="center" colspan="3">
					<input type="button" value="목록" onclick="listFrm()"> 
					<input type="button" value="수정" onclick="updateFrm()"> 
					<input type="button" value="삭제">
				</td>
			</tr>
		</table>
	</form>
	<br>
</body>
</html>