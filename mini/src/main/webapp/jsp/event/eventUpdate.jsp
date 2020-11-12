<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
<script>
$(function(){
	$("#delbtn").on("click",function(){
	
		$("#frm").attr("action","${pageContext.request.contextPath}/eventDelete.do");
		
		$("#frm").submit();
	});	
	

});

</script>
</head>

<body>
<% request.setCharacterEncoding("utf-8"); %>
<hr>
	<div align="center">
		<div><h1>이벤트 수정/삭제 </h1></div>

			<form id="frm" name="frm" action="eventUpdate.do" method="post" enctype="multipart/form-data">
				<table border="1">
					<tr>
						<th width="150"> 지점명 </th>
						<td width="500">${branch_name}
        	 			</td>
					</tr>
					
					<tr>
						<th width="150"><input type="hidden" value="${vo.branch_no}" name="branch_no" id="branch_no"> </th>
					</tr>

					
					<tr>
						<th width="150"> 이벤트번호 </th>
						<td width="500"><input value="${vo.event_no}" name="event_no" id="event_no">
					</tr> <%--vo.event_no --%>
					<tr>
					<th width="150"> 이벤트명</th>
					<td><input type="text" name="event_name"></td>
					</tr>
					<tr>
						<th width="150"> 이벤트이미지 </th>
						<td><input type="file" id="img" name="img"></td>
					</tr>
					
					<tr>
						<th width="150"> 이벤트내용 </th>
						<td><textarea rows="10" cols="50" id="event_content" name="event_content"></textarea></td>
					</tr>
					<tr>
						<th width="150"> 이벤트시작일 </th>
						<td width="500"><input name="start_event" type="date">
					</td>
					</tr>
					<tr>
						<th width="150"> 이벤트기간 </th>
						<td width="500"><input type="text" name="event_term" value="" >
        	 			</td>
					</tr>
					
					<tr>
						<th width="150"> 할인율 </th>
						<td>
						<input type="text" name="sale" >
						</td>
					</tr>
				</table>
				<br>
					<div align="center">
							<button style="margin: 10px" class="btn btn-outline-light" type="submit" id="upbtn" >수정하기</button>&nbsp;&nbsp;
							<button style="margin: 10px" class="btn btn-outline-light" type="button" id="delbtn" >삭제하기</button>
					</div>
			</form>
			<br>
		</div>
</body>
</html>