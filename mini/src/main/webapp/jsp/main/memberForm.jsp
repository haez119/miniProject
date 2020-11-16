<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
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
		 
		 $("#pass").addClass('pw');
		 $("#passok").addClass('pw');
		 
		 
		 
		   $('.pw').focusout(function () {
		        var pwd1 = $("#pass").val();
		        var pwd2 = $("#passok").val();
		 
		        if ( pwd1 != '' && pwd2 == '' ) {
		            null;
		        } else if (pwd1 != "" || pwd2 != "") {
		            if (pwd1 == pwd2) {
		                // 비밀번호 일치 이벤트 실행
		                $('#btn').attr("disabled", false);
		                alert("비밀번호가 일치합니다");
		            } else {
		                // 비밀번호 불일치 이벤트 실행
		            	$('#btn').attr("disabled", true);
		            	alert("비밀번호가 일치 하지 않습니다");
		            	$("#passok").focus();
		            }
		        }
		    });
			
		
			   
		  
		 
	
	});
	
	function chInsert(chk) {
		
		$("#tbl").html(""); // 초기화
		
		 if(chk == "member") {
			 $("<tr>")
			 .append($("<td>")).html("아이디")
			 .append($("<td>")).append($("<input>").attr({name: "id", type: "text"}))
			 .append($("<input>").attr({name: "id", type: "button", id: "chk" ,value: "중복확인"}))
			 .appendTo("#tbl")
			
			 $("#chk").on("click", function() {
			 $("#frm").attr("action","${pageContext.request.contextPath}/Check.do");
			 $("#frm").submit(); 
			 });
	  		
	
			 
			  $("<tr>")
			 .append($("<td>")).html("이름")
			 .append($("<td>")).append($("<input>").attr({name: "name", type: "text"}))
			 .appendTo("#tbl")
			  $("<tr>")
			 .append($("<td>")).html("비밀번호")
			 .append($("<td>")).append($("<input>").attr({name: "password", type: "password", id:"pass"}))
			 .appendTo("#tbl")
			   $("<tr>")
			 .append($("<td>")).html("비밀번호확인")
			 .append($("<td>")).append($("<input>").attr({name: "password", type: "password", id:"passok"}))
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
			 .append($("<td>")).append($("<input>").attr({name: "branch_no", type: "text", value: "${max}", readonly: "true"}))
			 .appendTo("#tbl")
			 
			 $("<tr>")
			 .append($("<td>")).html("아이디")
			 .append($("<td>")).append($("<input>").attr({name: "id", type: "text", value: "admin"+ "${max}", readonly: "true"}))
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

	<c:if test="${ch ne null}">
			<script>
			alert("아이디 중복이 없습니다");
			</script>
			</c:if>
		<form id="frm" name="frm" >
		        <table id="tbl" align="center"></table>
	   		<p></p>
	   		<div align="center">
		        <input type="submit" name="submit" value="등록" disabled="disabled" id="btn" class="btn btn-outline-light"/>
		        <input type="reset" name="reset" value="취소" class="btn btn-outline-light"/>
		        <p></p>	   		
	   		</div>
	    </form>
    </div>
</body>
</html>