<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테마등록 화면</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script>
$(function(){
	$("#delbtn").on("click",function(){
	
		$("#frm").attr("action","${pageContext.request.contextPath}/themaDelete.do");
		
		$("#frm").submit();
	});	
	

});
</script>
</head>

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
			<form id="frm" name="frm" method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/themaUpdate.do">
				<table border="1">
					<tr>
						<th width="150"> 지점명 </th>
						<td width="500">${branch_name}
        	 			</td>
					</tr>
					<tr>
						<th width="150"> 테마번호 </th>
						<td width="500"><input type="text" name="thema_no" value="${themaVo.thema_no}" readonly="readonly">
        	 			</td>
					</tr>
					<tr>
						<th width="150"> 테마이름 </th>
						<td><input type="text" id="thema_name" name="thema_name" value="${themaVo.thema_name}"></td>
					</tr>
					
					<tr>
						<th width="150"> 테마소개 </th>
						<td><textarea rows="10" cols="50" id="thema_intro" name="thema_intro" >${themaVo.thema_intro}</textarea></td>
					</tr>
					<tr>
						<th width="150"> 난이도 </th>
						<td>
						<select id="level2" name="level2">
              			<c:forEach var="i" begin="1" end='5'>
              			<c:if test="${themaVo.level2 == i}">
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
						<th width="150"> 이용시간 </th>
						<td>
						<input type="checkbox" id="time" name="time" value="1030">10:30
						<input type="checkbox" id="time" name="time" value="1140">11:40
						<input type="checkbox" id="time" name="time" value="1250">12:50
						<input type="checkbox" id="time" name="time" value="1400">14:00
						<input type="checkbox" id="time" name="time" value="1510">15:10
						<input type="checkbox" id="time" name="time" value="1620">16:20<br>
						<input type="checkbox" id="time" name="time" value="1730">17:30
						<input type="checkbox" id="time" name="time" value="1840">18:40
						<input type="checkbox" id="time" name="time" value="1950">19:50
						<input type="checkbox" id="time" name="time" value="2100">21:00
						<input type="checkbox" id="time" name="time" value="2210">22:10
						<input type="checkbox" id="time" name="time" value="2320">23:20
						</td>
						<script>
						$('[name="time"]').val(${list})
						</script>
						</td>
					</tr>
					<tr>
						<td colspan='2' align="center">
							<button type="submit" id="update" >수정하기</button>&nbsp;&nbsp;
							<button type="button" id="delbtn" >삭제하기</button>
							<input type="reset" value=" 취  소 ">
						</td>
					</tr>
				</table>
			
			</form>
			
		</div>
	
	</div>
	
</body>

</html>