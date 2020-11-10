<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
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
${msg}
			<form id="frm" name="frm" action="EventInsert.do" method="post" enctype="multipart/form-data">
				<table border="1">
					<tr>
						<th width="150"> 지점명 </th>
						<td width="500">${branch_name}
        	 			</td>
					</tr>
					
					<tr>
						<th width="150"><input type="hidden" value="${branch_no}" name="branch_no" id="branch_no"> </th>
					</tr>
					
					
					
					
					<tr>
						<th width="150"> 이벤트번호 </th>
						<td width="500"><input readonly value="${max}" name="event_no" id="event_no">
					</tr>
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