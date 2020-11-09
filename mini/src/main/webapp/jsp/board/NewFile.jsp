<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
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
<script>
	$('#star_grade a').click(function() {
		$(this).parent().children("a").removeClass("on"); /* 별점의 on 클래스 전부 제거 */
		$(this).addClass("on").prevAll("a").addClass("on"); /* 클릭한 별과, 그 앞 까지 별점에 on 클래스 추가 */
		return false;
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

	<span class="star-input"> <span class="input"> <input
			type="radio" name="star-input" value="1" id="p1"> <label
			for="p1">1</label> <input type="radio" name="star-input" value="2"
			id="p2"> <label for="p2">2</label> <input type="radio"
			name="star-input" value="3" id="p3"> <label for="p3">3</label>
			<input type="radio" name="star-input" value="4" id="p4"> <label
			for="p4">4</label> <input type="radio" name="star-input" value="5"
			id="p5"> <label for="p5">5</label>
	</span> <output for="star-input">
			<b>5</b>점
		</output>
	</span>
	<script src="js/jquery-1.11.3.min.js"></script>
	<script src="js/star.js"></script>

		<form name="frm" id="frm" method="post" action="boardInsert.do"
		onsubmit="return formCheck()" enctype="multipart/form-data">
		<input type="hidden" name="id" value="${sessionScope.sessionID}">
		<table width="700" border="3" bordercolor="hotpink" align="center">

			<tr>
				<td id="title">작성자</td>
				<td>#</td>
			</tr>
			<tr>
				<td id="name">이름</td>
				<td>#</td>
			</tr>
			<tr>
				<td id="password">비밀번호<strong class="importent">(필수)</strong></td>
				<td><input name="password" type="#" value="#"></td>
			</tr>
			<tr>
				<td>날짜</td>
				<td><input name="bdate" type="date" value=""></td>
			</tr>
			<tr>
				<td id="지점?">지점</td>
				<td>#</td>
			</tr>
			<tr>
				<td>테마<strong class="importent">(필수)</strong></td>
				<td><input type="text" name="title" value="" size="50"
					maxlength="255"></td>
			</tr>
			<tr>
				<td>내용<strong class="importent">(필수)</strong></td>
				<td><input type="text" name="content" value="" size="50"
					maxlength="65536" style="width: 550px; height: 250px"></td>
			</tr>
		
			<tr>
				<td align="center" colspan="3">
				<input type="button" value="목록" onclick="#">
				<input type="button" value="등록" onclick="#"> 
				<input type="button" value="작성취소" onclick="#"></td>
			</tr>
		</table>
	</form>
	<br>


</body>
</html>


