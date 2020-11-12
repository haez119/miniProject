<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>

	$(function(){
		
		$("input[name='btnOk']").on('click',function(){
			
			$(location).attr('href','${pageContext.request.contextPath}/noticeList.do');
		 	
		});
	});

</script>
<style>
.a {
	background-color: black;
	color: white;
	border: none;
}
th	{
	text-align: center;
}
</style>
</head>
<body>
	<div align="center" style="padding: 5px">
		<table width="700" border="3px" style="margin: 10px">
			<tr>
				<th>지점</th>
				<td>&nbsp;&nbsp;<input class="a" type="text" readonly="readonly" value="${vo.branch_name}" size="50" readonly="readonly"></td>
				
			</tr>
			<tr>
				<th>제목</th>
				<td>&nbsp;&nbsp;<input class="a" type="text" name="title" value="${vo.title}" size="50" maxlength="255" readonly="readonly"></td>
			</tr>
			<tr>
				<th>작성일</th>
				<td>&nbsp;&nbsp;<input class="a" type="text" name="insert_date" value="${vo.insert_date}" size="50" readonly="readonly"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td>&nbsp;&nbsp;<textarea class="a" rows="10" cols="50" id="content" name="content" >${vo.content}</textarea></td>
			</tr>
		</table>
		<input type="button" name="btnOk" value="확인" class="btn btn-outline-light" style="margin: 10px" >
	</div>
</body>
</html>