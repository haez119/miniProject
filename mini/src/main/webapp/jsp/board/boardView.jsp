<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
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
				<td id="id">�ۼ���</td>
				<td>${sessionScope.sessionID}</td>
			</tr>
			<tr>
				<td>����<strong class="importent">(�ʼ�)</strong></td>
				<td>${vo.title}</td>
			</tr>
			<tr>
				<td>��¥</td>
				<td>${vo.bdate}</td>
			</tr>
			<tr>
				<td>����<strong class="importent">(�ʼ�)</strong></td>
				<td>${vo.content}</td>
			</tr>
			<tr>
				<td id="title">����÷��</td>
				<td><input type="file" name="board_file" /></td>
			</tr>
			<tr>
				<td align="center" colspan="3">
					<input type="button" value="���" onclick="listFrm()"> 
					<input type="button" value="�ۼ����" onclick="listFrm()"> 
					<input type="button" value="���">
				</td>
			</tr>
		</table>
	</form>
	<br>
</body>
</html>