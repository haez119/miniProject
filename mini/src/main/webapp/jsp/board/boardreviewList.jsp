<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.star-input>.input, .star-input>.input>label:hover, .star-input>.input>input:focus+label,
	.star-input>.input>input:checked+label {
	display: inline-block;
	vertical-align: middle;
	background: url('${pageContext.request.contextPath}/img/grade_img.png')
		no-repeat;
}

.star-input {
	display: inline-block;
	white-space: nowrap;
	width: 225px;
	height: 40px;
	padding: 25px;
	line-height: 30px;
}

.star-input>.input {
	display: inline-block;
	width: 150px;
	background-size: 150px;
	height: 28px;
	white-space: nowrap;
	overflow: hidden;
	position: relative;
}

.star-input>.input>input {
	position: absolute;
	width: 1px;
	height: 1px;
	opacity: 0;
}

star-input>.input.focus {
	outline: 1px dotted #ddd;
}

.star-input>.input>label {
	width: 30px;
	height: 0;
	padding: 28px 0 0 0;
	overflow: hidden;
	float: left;
	cursor: pointer;
	position: absolute;
	top: 0;
	left: 0;
}

.star-input>.input>label:hover, .star-input>.input>input:focus+label,
	.star-input>.input>input:checked+label {
	background-size: 150px;
	background-position: 0 bottom;
}

.star-input>.input>label:hover ~label {
	background-image: none;
}

.star-input>.input>label[for="p1"] {
	width: 30px;
	z-index: 5;
}

.star-input>.input>label[for="p2"] {
	width: 60px;
	z-index: 4;
}

.star-input>.input>label[for="p3"] {
	width: 90px;
	z-index: 3;
}

.star-input>.input>label[for="p4"] {
	width: 120px;
	z-index: 2;
}

.star-input>.input>label[for="p5"] {
	width: 150px;
	z-index: 1;
}

.star-input>output {
	display: inline-block;
	width: 60px;
	font-size: 18px;
	text-align: center;
	vertical-align: middle;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
$(document).ready(function() {
	
	$("#hiddenStar").val('5');

	$('.input').on('click','input' ,function() {
		
		$("#star").append().html("");
		
		let star = $(this).val();
		$("#star").append(star);
		$("#hiddenStar").val(star);
		

	});
	
	 $('#btnlist').on('click', function() {
			
		 alert("목록 페이지로 이동합니다.");
		 $(location).attr('href','${pageContext.request.contextPath}/board.do');

	 });
	 

	$('#btnAdd').on('click',function(){
		
		$.ajax({ 
		    url: "/mini/reviewboard.do", 
		    dataType: 'json', 
		    data: $("#frm").serialize(),
		    success: function(data) { 
		        alert("등록완료.");
		        $(location).attr('href','${pageContext.request.contextPath}/board.do');
		    },
		    error:function(xhr, status, message) { 
		        alert(" status: "+status+" er:"+message);
		    }
		});
		
	});// click
			

});
</script>
<style type="text/css">
table {
	margin: auto;
}

strong {
	font-size: 11px;
	font-weight: bold;
	font-family: "Trebuchet MS", Dotum, Arial;
	font-weight: bold;
}
</style>
</head>

<body>
	<div align="center">
	 <span class="star-input"> 
		<span class="input"> 
			<input type="radio" class="star-input" value="1" id="p1"> <label for="p1" value="1"></label> 
			<input type="radio" class="star-input" value="2" id="p2"> <label for="p2" value="2"></label> 
			<input type="radio"	class="star-input" value="3" id="p3"> <label for="p3" value="3"></label>
			<input type="radio" class="star-input" value="4" id="p4"> <label for="p4" value="4"></label> 
			<input type="radio" class="star-input" value="5" id="p5"> <label for="p5" value="5"></label>
		</span> 
		<output for="star-input">
			<b id="star">5</b>점
		</output>
	 </span>
	</div>
	<br>

	<script src="js/jquery-1.11.3.min.js"></script>
	<script src="js/star.js"></script>

		<form name="frm" id="frm" method="post">
		<table width="700" border="3" bordercolor="hotpink" align="center">
			<tr >
				<td>지점</td>
				<td><input type="text" id="b_name" name="b_name" value="${vo.branch_name}" readonly="readonly"></td>
			</tr>
			<tr>
				<td>테마</td>
				<td><input type="text" id="thema" name="thema" value="${vo.thema_name}" readonly="readonly"></td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input type="text" id="id" name="id" value="${id}" readonly="readonly"></td>
			</tr>
			
			<tr>
				<td id="bdate">이용한 날짜</td>
				<td><input type="text" id="bdate" name="bdate" value="${vo.use_date}" readonly="readonly"></td>
			</tr>
			
			<tr>
				<td id="title">제목</td>
				<td><input type="text" id="title" name="title"  size="50" maxlength="255" ></td>
			</tr>
			<tr>
				<td>내용<b class="importent"></b></td>
				<td><input type="text" id="content" name="content" size="50" maxlength="65536" style=" width: 550px; height: 250px; "></td>
			</tr>
			<tr>
				<td><input type="hidden" id="hiddenStar" name="hiddenStar"></td>
			</tr>

			<tr>
				<td align="center" colspan="3">
				<input style="margin: 10px" class="btn btn-outline-light" id="btnlist" type="button" value="목록" >
				<input style="margin: 10px" class="btn btn-outline-light" id="btnAdd" type="button" value="수정"> 
				<input style="margin: 10px" class="btn btn-outline-light" id="btnCancel" type="button" value="작성취소"></td>
			</tr>
		</table>
	</form>
	<br>


</body>
</html>


