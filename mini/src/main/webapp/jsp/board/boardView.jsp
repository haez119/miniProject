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
				<td>��ȣ</td>
				<td id="a">${vo.no}</td>
			</tr>
			<tr>
				<td>�ۼ���</td>
				<td id="a">${vo.id}</td>
			</tr>
			<tr>
				<td>����</td>
				<td id="a">${vo.title}</td>
			</tr>
			<tr>
				<td>��¥</td>
				<td id="a">${vo.board_date}</td>
			</tr>
			<tr>
				<td>����</td>
				<td id="a">${vo.content}</td>
			</tr>
			<tr>
				<td>����÷��</td>
				<td id="a"></td>
			</tr>
			<tr>
				<td align="center" colspan="3">
					<input type="button" value="���" onclick="listFrm()"> 
					<input type="button" value="����" onclick="updateFrm()"> 
					<input type="button" value="����">
				</td>
			</tr>
		</table>
	</form>
	<br>
</body>
</html>