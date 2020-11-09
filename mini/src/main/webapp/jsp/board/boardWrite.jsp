<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글등록</title>

<script>
	function listFrm() {
		location.href = "board.do";
	}

	function formCheck() {
		//var name = document.forms[0].name.value;
		var title = document.forms[0].title.value;
		var content = document.forms[0].content.value;

		/*	if (name == null || name == "") {
				alert('이름을 입력하세요.');
				document.forms[0].name.focus();
				return false;
			} 
		 */
		if (title == null || title == "") {
			alert('제목을 입력하세요.');
			document.forms[0].title.focus();
			return false;
		}
		if (content == null || content == "") {
			alert('내용을 입력하세요.');
			document.forms[0].content.focus();
			return false;
		}
	}
	//&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
		<input type="hidden" name="id" value="${sessionScope.sessionID}">
		<table width="700" border="3" bordercolor="hotpink" align="center">

			<tr>
				<td id="title">작성자</td>
				<td>${sessionScope.sessionID}</td>
			</tr>
			<tr>
				<td>제목<strong class="importent">(필수)</strong></td>
				<td><input type="text" name="title" value="" size="50"
					maxlength="255"></td>
			</tr>
			<tr>
				<td>날짜</td>
				<td><input name="bdate" type="date" value=""></td>
			</tr>
			<tr>
				<td>내용<strong class="importent">(필수)</strong></td>
				<td><input type="text" name="content" value="" size="50"
					maxlength="65536" style="width: 550px; height: 250px"></td>
			</tr>
			<tr>
				<td id="title">파일첨부</td>
				<td><input type="file" name="board_file" /></td>
			</tr>
			<tr>
				<td align="center" colspan="3"><input type="button" value="목록">
					<input type="button" value="등록" onclick="listFrm()"> <input
					type="button" value="작성취소" onclick="listFrm()"></td>
			</tr>
		</table>
	</form>
	<br>
</body>
</html>