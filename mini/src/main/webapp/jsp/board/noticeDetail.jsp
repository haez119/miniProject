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
</head>
<body>
	<div align="center" style="padding: 5px">
		<table width="700" border="3px" align="center"  style="margin: 10px">
			<tr>
				<th>지점</th>
				<td><input type="text" readonly="readonly" value="${vo.branch_name}" size="50" readonly="readonly"></td>
				
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="title" value="${vo.title}" size="50" maxlength="255" readonly="readonly"></td>
			</tr>
			<tr>
				<td>작성일</td>
				<td><input type="text" name="insert_date" value="${vo.insert_date}" size="50" readonly="readonly"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="10" cols="50" id="content" name="content" >${vo.content}</textarea></td>
			</tr>
		</table>
		<input type="button" name="btnOk" value="확인" class="btn btn-outline-light" style="margin: 10px" >
	</div>
</body>
</html>