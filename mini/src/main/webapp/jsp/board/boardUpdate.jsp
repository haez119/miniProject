<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
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
				alert('�̸��� �Է��ϼ���.');
				document.forms[0].name.focus();
				return false;
			} 
		 */
		if (title == null || title == "") {
			alert('������ �Է��ϼ���.');
			document.forms[0].title.focus();
			return false;
		}
		if (content == null || content == "") {
			alert('������ �Է��ϼ���.');
			document.forms[0].content.focus();
			return false;
		}
	}
	function listFrm() {
		location.href = "board.do";
	}

	function writeForm() {
		location.href = "board.do"; //��� ��ư
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

<% request.setCharacterEncoding("utf-8");%>

</head>
<body>
	<form name="frm" id="frm" method="post" action="boardUpdateAction.do"
		onsubmit="return formCheck()" enctype="multipart/form-data">
		<input type="hidden" name="id" value="">
		<table width="700" border="3" bordercolor="hotpink" align="center">

			<tr>
				<td id="title">&nbsp;&nbsp;��ȣ</td>
				<td>&nbsp;&nbsp;${vo.no}</td>
			</tr>
			<tr>
				<td id="title">&nbsp;&nbsp;�ۼ���</td>
				<td>&nbsp;&nbsp;${id}</td>
			</tr>
			<tr>
				<td>&nbsp;&nbsp;����<strong class="importent">(�ʼ�)</strong></td>
				<td><input type="text" name="title" size="50" maxlength="255" value="${vo.title}"></td>
			</tr>
			<tr>
				<td>&nbsp;&nbsp;��¥</td>
				<td><input type="date" name="board_date" value="${vo.board_date}"></td>
			</tr>
			<tr>
				<td>&nbsp;&nbsp;����<strong class="importent">(�ʼ�)</strong></td>
				<td><input type="text" name="content" value="${vo.content}" size="50"
					maxlength="65536" style="width: 550px; height: 250px"></td>
			</tr>
			<tr>
				<td id="title">&nbsp;&nbsp;����÷��</td>
				<td><input type="file" name="board_file" /></td>
			</tr>

		</table>
		<br>
		<div align="center">
			<button id="btn" type="submit">����</button>
			<button id="btn" type="reset">����</button>
			<button id="btn" type="submit" onclick="listFrm()">���</button>
		</div>
	</form>
	<br>
</body>
</html>