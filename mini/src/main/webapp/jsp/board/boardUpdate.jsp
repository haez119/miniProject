<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	function listFrm() {
		lacation.href = "board.do";
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

</head>
<body>
	<form name="frm" id="frm" method="post" action="boardUpdateAction.do"
		onsubmit="return formCheck()" enctype="multipart/form-data">
		<input type="hidden" name="id" value="">
		<table width="700" border="3" bordercolor="hotpink" align="center">

			<tr>
				<td id="title">&nbsp;&nbsp;번호</td>
				<td>&nbsp;&nbsp;<input name="no" value="${vo.no}" readonly="readonly"></td>
			</tr>
			<tr>
				<td id="title">&nbsp;&nbsp;작성자</td>
				<td>&nbsp;&nbsp;<input name="no" value="${id}" readonly="readonly"></td>
			</tr>
			<tr>
				<td>&nbsp;&nbsp;제목<strong class="importent">(필수)</strong></td>
				<td>&nbsp;&nbsp;<input type="text" name="title" size="50" maxlength="255" value="${vo.title}"></td>
			</tr>
			<tr>
				<td>&nbsp;&nbsp;날짜</td>
				<td>&nbsp;&nbsp;<input type="date" name="board_date" value="${vo.board_date}" readonly="readonly"></td>
			</tr>
			<tr>
				<td>&nbsp;&nbsp;내용<strong class="importent">(필수)</strong></td>
				<td>&nbsp;&nbsp;<textarea rows="10" cols="50" class="text1" type="text" name="content">${vo.content}</textarea></td>

			</tr>
			<tr>
				<td id="title">&nbsp;&nbsp;파일첨부</td>
				<td><input type="file" name="board_file" /></td>
			</tr>

		</table>
		<br>
		<div align="center">
			<button style="margin: 10px" class="btn btn-outline-light" id="btn" type="submit">수정</button>
			<button style="margin: 10px" class="btn btn-outline-light" id="btn" type="reset">취소</button>
			<button style="margin: 10px" class="btn btn-outline-light" id="btn" type="submit" onclick="listFrm()">목록</button>
		</div>
	</form>
	<br>
</body>
</html>