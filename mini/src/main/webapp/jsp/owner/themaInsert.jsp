<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테마등록 화면</title>
</head>
<body>
	
	<hr>
	<div align="center">
		<div><h1>테마등록</h1></div>
		<div>
			<c:if test="${fail ne null}">
			<script>
			alert("테마 등록 실패");
			</script>
			</c:if>
			<form id="frm" name="frm" action="themaInsert.do" method="post" enctype="multipart/form-data">
				<table border="1">
					<tr>
						<th width="150"> 지점번호 </th>
						<td width="500"><select id="branch_no" name="branch_no">
              			<c:forEach var="i" begin="1" end='${branch_no }'>
        	 			<option value='${i}'>${i}</option>
        	 			</c:forEach>
        	 			</td>
					</tr>
					<tr>
						<th width="150"> 테마이름 </th>
						<td><input type="text" id="thema_name" name="thema_name"></td>
					</tr>
					
					<tr>
						<th width="150"> 테마이미지 </th>
						<td><input type="file" id="thema_img" name="thema_img"></td>
					</tr>
					
					<tr>
						<th width="150"> 테마소개 </th>
						<td><textarea rows="10" cols="50" id="thema_intro" name="thema_intro"></textarea></td>
					</tr>
					<tr>
						<th width="150"> 난이도 </th>
						<td>
						<select id="level2" name="level2">
              			<c:forEach var="i" begin="1" end='5'>
        	 			<option value='${i}'>${i}</option>
        	 			</c:forEach></td>
					</tr>
					<tr>
						<th width="150"> 인원제한 </th>
						<td><select id="max_per" name="max_per" >
              			<c:forEach var="i" begin="1" end='8'>
        	 			<option value='${i}' >${i}</option>
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
					</tr>
					<tr>
						<td colspan='2' align="center">
							<input type="submit" value="등록하기"> &nbsp;&nbsp;
							<input type="reset" value=" 취  소 ">
						</td>
					</tr>
				</table>
			
			</form>
			
		</div>
	
	</div>
	
	
</body>
</html>