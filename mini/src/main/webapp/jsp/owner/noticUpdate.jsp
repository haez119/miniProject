<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(function(){
	
	$('#btnUp').on('click',function(){
		
		$.ajax({ 
		    url: "/mini/reUpdate.do", 
		    dataType: 'json', 
		    data: $("#frm").serialize(),
		    success: function(data) { 
		        alert("수정되었습니다.");
		    },
		    error:function(xhr, status, message) { 
		        alert(" status: "+status+" er:"+message);
		    }
		});
		
		
	});

});
</script>


</head>
<body>
	<h2 align="center">공지사항 수정 </h2><p></p>
	<hr>
	<table border="1" style=" background-color:  rgb(56, 56, 56); color: white;  padding: 15px;" class="table">
		 	<tr>
		 		<th>지점 정보</th>
		 		<td>${vo.branch_no} &nbsp; ${branch_name} </td>
		 	</tr>
		 	<tr>
		 		<th>아이디 &nbsp;</th>
		 		<td>${vo.id}</td>
		 	</tr>
			<tr>
		 		<th>작성일 &nbsp;</th>
		 		<td><input type="text" name="insert_date" value="${vo.insert_date}"></td>
		 	</tr>
			<tr>
		 		<th>제목 &nbsp;</th>
		 		<td><input type="text" name="title" value="${vo.title}"> </td>
		 	</tr>
		 	<tr>
		 		<th>내용 &nbsp;</th>
		 		<td><textarea style="width: 500px; height: 300px; padding: 10px"  name="content">${vo.content}</textarea></td>
		 	</tr>
		 </table>
		<div align="right">
			<input type="button" class="btn btn-outline-light" id="btnUp" value="수정">
			<input type="button" class="btn btn-outline-light" id="btnList" value="취소">
		<p></p>
	</div>
	
</body>
</html>