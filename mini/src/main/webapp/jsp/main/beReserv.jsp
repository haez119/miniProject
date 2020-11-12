<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1 style="color: white; padding-bottom: 15px" align="center" >${vo.name}님의 예약정보</h1>
	
	<hr style="border-color: white;">
	<h3 align="center"> 예약번호로 조회할 수 있습니다.</h3><p></p>
		
		<table border="1" style=" background-color:  rgb(56, 56, 56); color: white;  padding: 15px;" class="table">
		
		 	<tr>
		 		<th>예약번호</th>
		 		<td id="id">${vo.re_no}</td>
		 	</tr>
			<tr>
		 		<th>예약자</th>
		 		<td>${vo.name}</td>
		 	</tr>
		 	<tr>
		 		<th>지점</th>
		 		<td>${vo.branch_name}</td>
		 	</tr>
			<tr>
		 		<th>테마</th>
		 		<td>${vo.thema_name}</td>

		 	</tr>
		 	<tr>
		 		<th>예약일 &nbsp;</th>
		 		<td>${vo.reservdate}</td>
		 	</tr>
			<tr>
		 		<th>예약시간 &nbsp;</th>
		 		<td> ${vo.time} </td>
		 	</tr>
		 	<tr>
		 		<th>인원 &nbsp;</th>
		 		<td> ${vo.personnel} </td>
		 	</tr>
		 	<tr>
		 		<th>연락처 &nbsp;</th>
		 		<td> ${vo.phone} </td>
		 	</tr>
		 	<tr>
		 		<th>결제금액 &nbsp;</th>
		 		<td> ${vo.price} </td>
		 	</tr>	
		 </table>
	
	
	
</body>
</html>