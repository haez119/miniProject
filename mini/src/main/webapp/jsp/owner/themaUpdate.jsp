<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테마등록 화면</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document.ready(function(){
	$("#delete").on("click",function(){
		console.log("뚜둥")
		$("frm").attr("action","themaDelete.do");
		$("frm").submit();
	});	
	
	$("#update").on("click",function(){
		$("frm").attr("action","themaUpdate.do");
		$("frm").submit();
	});
}));
	


</script>
<body>
	<% request.setCharacterEncoding("utf-8"); %>
	<hr>
	<div align="center">
		<div><h1>테마수정/삭제</h1></div>
		<div>
			<c:if test="${fail ne null}">
			<script>
			alert("테마 수정 실패");
			</script>
			</c:if>
			<form id="frm" name="frm" method="post" enctype="multipart/form-data">
				<table border="1">
					<tr>
						<th width="150"> 지점번호 </th>
						<td width="500">${branch_no}
        	 			</td>
					</tr>
					<tr>
						<th width="150"> 테마번호 </th>
						<td width="500"><input type="text" name="thema_no" value="${param.thema_no}" readonly="readonly">
        	 			</td>
					</tr>
					<tr>
						<th width="150"> 테마이름 </th>
						<td><input type="text" id="thema_name" name="thema_name" value="${param.thema_name}"></td>
					</tr>
					
					<tr>
						<th width="150"> 테마소개 </th>
						<td><textarea rows="10" cols="50" id="thema_intro" name="thema_intro" >${param.thema_intro}</textarea></td>
					</tr>
					<tr>
						<th width="150"> 난이도 </th>
						<td>
						<select id="level2" name="level2">
              			<c:forEach var="i" begin="1" end='5'>
              			<c:if test="${param.level2 == i}">
              			<option value='${i}' selected="selected">${i}</option>
              			</c:if>
        	 			<option value='${i}'>${i}</option>
        	 			</c:forEach></td>
					</tr>
					<tr>
						<th width="150"> 인원제한 </th>
						<td><select id="max_per" name="max_per" >
              			<c:forEach var="i" begin="1" end='8'>
              			<c:if test="${param.max_per == i}">
              			<option value='${i}' selected="selected">${i}</option>
              			</c:if>
        	 			<option value='${i}'>${i}</option>
        	 			</c:forEach></td>
					</tr>
				
					<tr>
						<td colspan='2' align="center">
							<button id="update">수정하기</button>&nbsp;&nbsp;
							<button id="delete">삭제하기</button>&nbsp;&nbsp;
							<input type="reset" value=" 취  소 ">
						</td>
					</tr>
				</table>
			
			</form>
			
		</div>
	
	</div>
	
</body>

</html>