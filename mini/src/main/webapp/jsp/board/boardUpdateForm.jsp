<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<script type="text/javascript">
	function listFrm()() {
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
	<form name="frm" id="frm" method="post" action="boardInsert.do"
		onsubmit="return formCheck()" enctype="multipart/form-data">
		<input type="hidden" name="id" value="">
		<table width="700" border="3" bordercolor="hotpink" align="center">

			<tr>
				<td id="title">&nbsp;&nbsp;작성자</td>
				<td>&nbsp;&nbsp;${id}</td>
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
				<td><input type="text" name="content" value="" size="50"
					maxlength="65536" style="width: 550px; height: 250px"></td>
			</tr>
			<tr>
				<td id="title">&nbsp;&nbsp;파일첨부</td>
				<td><input type="file" name="board_file" /></td>
			</tr>
			
		</table>
		<br>
				<div align="center">
				<button id="btn" type="submit">수정</button>
				<button id="btn" type="reset">삭제</button>
				<button id="btn" type="submit" onclick="listFrm()">목록</button>
			</div>
	</form>
	<br>
</body>
</html>