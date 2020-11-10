<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document).ready(function() {
	
	$('#btnAdd').on('click',function(){
		
		$.ajax({ 
		    url: "/mini/noticeInsert.do", 
		    dataType: 'json', 
		    data: $("#frm").serialize(),
		    success: function(data) { 
		    	 alert("등록완료.");
			     $(location).attr('href','${pageContext.request.contextPath}');
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
  <div align="center">
	<form id="frm" name="frm">
		<table border="1">
			<tr>
				<th width="150"> 지점명 </th>
				<td width="500"><input type="text" id="branch_name" name="branch_name" readonly="readonly" value="${branch_name}"></td>
			</tr>
			<tr>
				<th width="150"> 아이디 </th>
				<td width="500"><input type="text" id="id" name="id" readonly="readonly" value="${id}"></td>
			</tr>
			<tr>
				<th width="150"> 등록일 </th>
				<td><input type="date" id="toDay" name="toDay"></td>
			</tr>
			<tr>
				<th width="150"> 제목 </th>
				<td><input type="text" id="title" name="title"></td>
			</tr>
			<tr>
				<th width="150"> 공지내용 </th>
				<td><textarea rows="10" cols="50" id="content" name="content" ></textarea></td>
			</tr>
			<tr>
				<td colspan='2' align="center">
					<input class="btn btn-outline-light" style="margin: 10px" type="button" id="btnAdd" value="등록">
					<input class="btn btn-outline-light" style="margin: 10px" type="reset" value="취소">
				</td>
			</tr>
		</table>
	</div>
	</form>
</body>
</html>