<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {
		margin: 10px;
	}
	
</style>
</head>
<body>
	<div align="center">
		<table width="700" border="3px" align="center"  style="margin: 10px">
			<tr>
				<th>지점</th>
				<td><input type="text" readonly="readonly" value="지점명" size="50" readonly="readonly"></td>
				
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="title" value="제목" size="50" maxlength="255" readonly="readonly"></td>
			</tr>
			<tr>
				<td>작성일</td>
				<td><input type="text" name="insert_date" value="작성일" size="50" readonly="readonly"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><input type="text" name="content" value=" 내용들 " size="50"
					maxlength="65536" style="width: 550px; height: 250px" readonly="readonly"></td>
			</tr>
		</table>
		<input type="button" id="btnOk" value="확인" class="btn btn-outline-light" style="margin: 10px">
	</div>
</body>
</html>