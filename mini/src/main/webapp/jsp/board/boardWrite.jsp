<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardWrite.jsp</title>

<script>
	function listFrm() {
		location.href = "board.do";
	}

	function formCheck() {
		var title = document.forms[0].title.value;
		var writer = document.forms[0].writer.value;
		var content = document.forms[0].content.value;

		if (title == null || title == "") {
			alert('제목을 입력하세요.');
			document.forms[0].title.focus();
			return false;
		}
		if (writer == null || writer == "") {
			alert('작성자를 입력하세요.');
			document.forms[0].writer.focus();
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
strong {
	font-size: 11px;
	font-weight: bold;
	font-family: "Trebuchet MS", Dotum, Arial;
	font-weight: bold;
}
</style>
</head>
<body>
	<form name="frm" id="frm" method="post" action="boardInsert.do">
		<table width="700" border="3" bordercolor="white" align="center">
			<tr>
				<td id="name">이름<strong class="importent">(필수)</strong>
				</td>
				<td><input type="text" name="name" value="#" size="10"
					maxlength="20"></td>
			</tr>
			<tr>
				<td id="password">비밀번호<strong class="importent">(필수)</strong></td>
				<td><input type="text" name="password" size="10" maxlength="20"
					value="#" /></td>
			</tr>
			<tr>
				<td id="title">제목<strong class="importent">(필수)</strong></td>
				<td><input type="text" name="title" value="" size="50"
					maxlength="255"></td>
			</tr>
			<tr>
				<td id="cotegory">카테고리</td>
				<td><select name="category">
						<option value="Q&A">Q&A</option>
						<option value="리뷰">리뷰</option>
				</select>
				</td>
			</tr>
			<tr>
				<td id="date">날짜</td>
				<td><input name="info_Date" type="date" value="#"></td>
			</tr>
			<tr>
				<td id="title">내용<strong class="importent">(필수)</strong></td>
				<td><input type="text" name="title" value="" size="50"
					maxlength="65536" style="width: 550px; height: 250px"></td>
			</tr>

			<tr>
				<td align="center" colspan="3">
					<button type="submit" onclick="return addFrm()">등록</button> <input
					type="button" value="작성취소" onclick="listFrm()">
				</td>
			</tr>
		</table>
	</form>

</body>
</html>