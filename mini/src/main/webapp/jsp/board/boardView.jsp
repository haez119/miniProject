<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>
	function writeForm() {
		location.href = "board.do";
	}
</script>

<style>
table {
	margin: auto;
}

strong {
	font-size: 11px;
	font-weight: bold;
	font-family: "Trebuchet MS", Dotum, Arial;
	font-weight: bold;
}
</style>
</head>
<body>
	<form name="frm" id="frm" method="post" action="boardInsert.do"
		onsubmit="return formCheck()" enctype="multipart/form-data">
		<input type="hidden" name="id" value="">
		<table width="700" border="3" bordercolor="hotpink" align="center">

			<tr>
				<td id="id">작성자</td>
				<td>${id}</td>
			</tr>
			<tr>
				<td>제목<strong class="importent">(필수)</strong></td>
				<td>${title}</td>
			</tr>
			<tr>
				<td>날짜</td>
				<td>${board_date}</td>
			</tr>
			<tr>
				<td>내용<strong class="importent">(필수)</strong></td>
				<td>${vo.content}</td>
			</tr>
			<tr>
				<td id="title">파일첨부</td>
				<td><input type="file" name="board_file" /></td>
			</tr>
			<tr>
				<td align="center" colspan="3"><input type="button" value="수정"
					onclick="listFrm()"> <input type="reset" value="작성취소">
					<input type="button" value="목록"></td>
			</tr>
		</table>
	</form>
	<br>
</body>
</html>