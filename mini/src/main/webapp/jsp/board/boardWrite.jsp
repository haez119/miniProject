<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
function formCheck() {
	var title = document.forms[0].title.value;
	var writer = document.forms[0].writer.value;
	var content = document.forms[0].content.value;
	
	if(title == null || title == ""){
		alert('제목을 입력하세요.');
		document.forms[0].title.focus();
		return false;
	}
	if(writer == null || writer == ""){
		alert('작성자를 입력하세요.');
		document.forms[0].writer.focus();
		return false;
	}
	if(content == null || content == ""){
		alert('내용을 입력하세요.');
		document.forms[0].content.focus();
		return false;
	}
}
</script>
<body>
	<h1>게시판 등록 페이지</h1>
	<table>
		<tr>
			<th>번호</th>
			<th></th>
			<th></th>
			<th></th>
		</tr>
	</table>
	
</body>
</html>