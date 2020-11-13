<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
$(function(){

		$('#btnUpdate').on('click',function(){
			
			
			$.ajax({ 
			    url: "/mini/ownerUpdateAction.do", 
			    dataType: 'json', 
			    data: $("#frm").serialize(),
			    success: function(data) { 
			        alert("수정되었습니다.");
			    },
			    error:function(xhr, status, message) { 
			        alert(" status: "+status+" er:"+message);
			    }
			});
			
		});// click
});

</script>



</head>
<body>
	<form name="frm" id="frm" >
		<h2 style="color: white; padding-bottom: 15px" align="center" >${vo.name}님의 회원정보</h2>
		
		<table border="1" style=" background-color:  rgb(56, 56, 56); color: white;  padding: 15px;" class="table">
		
		 	<tr>
		 		<th>아이디</th>
		 		<td id="id">${vo.id}</td>
		 	</tr>
		 	<tr>
		 		<th>지점번호</th>
		 		<td id="id">${vo.branch_no}</td>
		 	</tr>
		 	<tr>
		 		<th>지점명</th>
		 		<td><input id="branch_name" name="branch_name" type="text" value="${vo.branch_name}"></td>
		 	</tr>
			<tr>
		 		<th>비밀번호</th>
		 		<td><input id="password" name="password" type="password" value="${vo.password}"></td>
		 	</tr>
		 	<tr>
		 		<th>이름</th>
		 		<td><input id="name" name="name" type="text" value="${vo.name}"></td>
		 	</tr>
			<tr>
		 		<th>연락처</th>
		 		<td><input id="tel" name="tel" type="text" value="${vo.tel}"></td>

		 	</tr>
		 	<tr>
		 		<th>매장주소 &nbsp;</th>
		 		<td><input id="address" name="address" type="text" value="${vo.address}"></td>
		 	</tr>
		 </table>
		 
		 <div align="center">      
			<input type="button"  class="btn btn-outline-light" value="수정"  id="btnUpdate" />
			<input type="reset"  class="btn btn-outline-light" value="취소"/>
			<p></p>
		 </div>
</form>
	<p></p>
</body>
</html>