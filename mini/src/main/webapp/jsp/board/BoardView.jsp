<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>
	function listFrm() {
		location.href = "board.do";
	}
	function deleteFrm() {
		location.href = "boardDelete.do?id=${vo.id}";
	}
	function updateFrm() {
		location.href = "boardUpdate.do?id=${vo.id}";
	}
</script>
</head>
<body>
	<div class="tit-heading-wrap tit-evt">
		<h3>내용</h3>
	</div>
	<br>
	<table border="1" width="1000" border="3" bordercolor="black"
		align="center">
		<tr>
			<td name="no">공지번호</td>
			<td><input type="text" name="title" value="" size="50"
					maxlength="255"></td>
			<td>${vo.no}</td>
		</tr>
		<tr>
			<td name="id">아이디</td>
			<td>${vo.id}</td>
		</tr>
		<tr>
			<td name="title">제목</td>
			<td><input type="text" name="title" value="" size="50"
					maxlength="255"></td>
			<td>${vo.title}</td>
		</tr>
		<tr>
			<td name="bdate">날짜</td>
			<td>${vo.bdate}</td>
		</tr>
		<tr>
			<td name="category">카테고리</td>
			<td><select name="category">
						<option value="Q&A">Q&A</option>
						<option value="리뷰">리뷰</option>
				</select>
				</td>
			<td>${vo.category}</td>

		</tr>
		<tr>
			<td name="content">내 용</td>
			td>${vo.content}<input type="text" name="content" value="" size="50"
					maxlength="65536" style="width: 550px; height: 250px"></td>
			
		</tr>

		<tr align="center" valign="middle">
			<td colspan="5">
			<input type="button" value="수정" onclick="updateFrm()"> 
			<input type="button" value="삭제" onclick="deleteFrm()">
			<input type="button" value="목록" onclick="listFrm()">
			</td>
		</tr>
	</table>

</body>
</body>
</html>