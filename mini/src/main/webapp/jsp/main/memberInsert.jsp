<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
table, th, td {
	border: 1px solid #bcbcbc;
}

table {
	width: 800px;
}

h1 {
	margin: auto;
	border: 1px solid;
	padding: 1px;
	width: 300px;
	height: 50px;
}

p {
	align: center;
	margin-top: 50px;
}

input {
	font-size: large;
	text-align: center;
}

select {
	font-size: xx-large;
	width: 100px;
	height: 40px;
}
</style>
<body>
	<div align="center">
		<div>
			<h1>회 원 등 록</h1>
		</div>
		<br />
		<p></p>
		<div>
			<form id="frm" name="frm" action="memberInsert.do" method="post">
				<div>
					<table border="1">
						<tr>
							<th>아이디</th>
							<td><input type="text" id="id" name="id"> <input
								type="button" value="중복확인" onclick=""></td>
						</tr>
						<tr>
							<th>비밀번호</th>
							<td><input type="password" pw="pw" name="pw"></td>
						</tr>
						<th>비밀번호 확인</th>
						<td><input type="password" pw="pw" name="pw"></td>
						</tr>
						<tr>
							<th>이름</th>
							<td><input type="text" pw="name" name="name"></td>
						</tr>
						<th>생년월일</th>
						<td><input type="text" name="birth_yy" maxlength="4"
							placeholder="년(4자)" size="6"> <select id="mm">
								<option>월</option>
								<option value="01">1</option>
								<option value="02">2</option>
								<option value="03">3</option>
								<option value="04">4</option>
								<option value="05">5</option>
								<option value="06">6</option>
								<option value="07">7</option>
								<option value="08">8</option>
								<option value="09">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
						</select> </span> </input> <input type="number" pw="day" name="day"></td>

						</tr>
						<th>연락처</th>
						<td><select width="100%" name="phone">
								<option value="010" selected="selected">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
						</select>- <input type='tel' name='phone2' />- <input type='tel'
							name='phone3' /></td>
						</tr>

						<tr>
							<th>E-Mail</th>
							<td><input type="email" id="email" name="email"> <input
								type="button" value="중복확인" onclick=""></td>
						</tr>
					</table>
				</div>
				<br />
				<div>
					&nbsp;&nbsp; <input type="submit" value="완료">&nbsp;&nbsp; <input
						type="reset" value="삭제">&nbsp;&nbsp;
				</div>
			</form>
		</div>
	</div>
</body>
</html>

</body>
</html>