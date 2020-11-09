<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<hr>
	<div align="center">
		<div><h1>이벤트등록</h1></div>
		<div>
			
			<form id="frm" name="frm" action="eventInsertForm.do" method="post" enctype="multipart/form-data">
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
						<th width="150"> 이벤트번호 </th>
						<td width="500"><select id="event_no" name="event_no">
              			<c:forEach var="i" begin="1" end='${event_no }'>
        	 			<option value='${i}'>${i}</option>
        	 			</c:forEach>
					</tr>
					<tr>
					<th width="150"> 이벤트명</th>
					<td><input type="text" name="event_name"></td>
					</tr>
					<tr>
						<th width="150"> 이벤트이미지 </th>
						<td><input type="file" id="event_img" name="event_img"></td>
					</tr>
					
					<tr>
						<th width="150"> 이벤트내용 </th>
						<td><textarea rows="10" cols="50" id="event_content" name="event_content"></textarea></td>
					</tr>
					<tr>
						<th width="150"> 이벤트시작일 </th>
						<td width="500"><input name="start_event" type="date" value="">
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
						<input type="text" name="sale" value="" >
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