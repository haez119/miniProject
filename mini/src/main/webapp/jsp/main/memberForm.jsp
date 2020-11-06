<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
	// action="${pageContext.request.contextPath}/memberInsert.do" method="post"
	
	$(function(){

		var chk = $(".insert:checked").val();
		
		 $(".insert").change(function() {
			 chk = $(".insert:checked").val();
			 console.log(chk);
			 chInsert(chk);

		 });
		 
		 chInsert(chk);

	});
	
	function chInsert(chk) {
		
		$("#tbl").html(""); // 초기화
		
		 if(chk == "member") {
			 $("<tr>")
			 .append($("<td>")).html("아이디")
			 .append($("<td>")).append($("<input>").attr({name: "id", type: "text"}))
			 .appendTo("#tbl")
			  $("<tr>")
			 .append($("<td>")).html("이름")
			 .append($("<td>")).append($("<input>").attr({name: "name", type: "text"}))
			 .appendTo("#tbl")
			  $("<tr>")
			 .append($("<td>")).html("비밀번호")
			 .append($("<td>")).append($("<input>").attr({name: "password", type: "password"}))
			 .appendTo("#tbl")
			 $("<tr>")
			 .append($("<td>")).html("전화번호")
			 .append($("<td>")).append($("<input>").attr({name: "phone", type: "text"}))
			 .appendTo("#tbl")
			  $("<tr>")
			 .append($("<td>")).html("이메일")
			 .append($("<td>")).append($("<input>").attr({name: "email", type: "text"}))
			 .appendTo("#tbl")
			 
			 $("#frm").attr("action", "${pageContext.request.contextPath}/memberInsert.do");
			 
		 } else if(chk == "owner"){
			 $("<tr>")
			 .append($("<td>")).html("지점번호")
			 .append($("<td>")).append($("<input>").attr({name: "branch_no", type: "text", value: ${max}, readonly: "true"}))
			 .appendTo("#tbl")
			 
			 $("<tr>")
			 .append($("<td>")).html("아이디")
			 .append($("<td>")).append($("<input>").attr({name: "id", type: "text", value: "admin"+ ${max}, readonly: "true"}))
			 .appendTo("#tbl")
			 
			  $("<tr>")
			 .append($("<td>")).html("지점명")
			 .append($("<td>")).append($("<input>").attr({name: "branch_name", type: "text"}))
			 .appendTo("#tbl")
			 
			  $("<tr>")
			 .append($("<td>")).html("이름")
			 .append($("<td>")).append($("<input>").attr({name: "name", type: "text"}))
			 .appendTo("#tbl")
			 
			  $("<tr>")
			 .append($("<td>")).html("비밀번호")
			 .append($("<td>")).append($("<input>").attr({name: "password", type: "password"}))
			 .appendTo("#tbl")
			 
			  $("<tr>")
			 .append($("<td>")).html("전화번호")
			 .append($("<td>")).append($("<input>").attr({name: "tel", type: "text"}))
			 .appendTo("#tbl")
			 
			  $("<tr>")
			 .append($("<td>")).html("주소")
			 .append($("<td>")).append($("<input>").attr({name: "address", type: "text"}))
			 .appendTo("#tbl")
			 
			 $("#frm").attr("action", "${pageContext.request.contextPath}/ownerinsert.do");
			 
		 }

	}
	

</script>



<meta charset="utf-8" />
<title></title>
</head>
<body>
	<div align="right">
		<input type="radio" name="insert" class="insert"  value="member"  checked/>
		<label for="member">회원 회원가입</label>
		<input type="radio" name="insert" class="insert" value="owner" />
		<label for="owner">사장 회원가입</label>
	</div>
	<div align="center">
		<form id="frm" name="frm" >
		        <table id="tbl" align="center"></table>
	   		<p></p>
	   		
	        <input type="submit" name="submit" value="등록" />
	        <input type="reset" name="reset" value="취소" />
	    </form>
    </div>
</body>
</html>