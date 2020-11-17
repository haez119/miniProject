<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글등록</title>

<script>
	
	function formCheck() {
		var name = document.forms[0].name.value;
		var title = document.forms[0].title.value;
		var content = document.forms[0].content.value;

		if (name == null || name == "") {
			alert('이름을 입력하세요.');
			document.forms[0].name.focus();
			return false;
		} 
		
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
	function listFrm() {
		location.href = "board.do";
	}

	function writeForm() {
		location.href = "board.do"; //등록 버튼
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
<script type="text/javascript">

</script>

</head>
<body>
	<form name="frm" id="frm" method="post" action="boardInsert.do"
		onsubmit="return formCheck()" enctype="multipart/form-data">
		<input type="hidden" name="id" value="">
		<table width="700" border="3" bordercolor="hotpink" align="center">
			<c:if test="${id eq null }">	
			<tr>
				<td>&nbsp;&nbsp;작성자</td>
				<td>&nbsp;&nbsp;${id}</td>
			</tr>
			</c:if>
			<tr>
				<td>&nbsp;&nbsp;작성자<strong class="importent">(필수)</strong></td>
				<td><input type="text" name="title" value=""></td>
			</tr>
			<tr>
				<td>&nbsp;&nbsp;제목<strong class="importent">(필수)</strong></td>
				<td><input type="text" name="title" value="" size="50"
					maxlength="255"></td>
			</tr>
			<tr>
				<td>&nbsp;&nbsp;날짜</td>
				<td><input type="date" name="board_date" value=""></td>
			</tr>
			<tr>
				<td>&nbsp;&nbsp;내용<strong class="importent">(필수)</strong></td>
				<td><textarea type="text" name="content" value="" size="50"
					maxlength="65536" style="width: 550px; height: 250px"></textarea></td>
			</tr>

		</table>
			<div align="center">
				<td colspan="3">
					<input style="margin: 10px" class="btn btn-outline-light" type="button" value="목록" onclick="listFrm()">
					<input style="margin: 10px" class="btn btn-outline-light" type="submit" value="등록" >
					<input style="margin: 10px" class="btn btn-outline-light" type="reset" value="작성취소" >
				</td>
			</div>
	</form>
	<br>
</body>
</html>