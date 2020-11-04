<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체적용</title>

<!-- 순서 1. 스타일, 2. 스크립트 - 1. 제이쿼리 2. 나머지 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous"></script>

<link rel="stylesheet" href="/mini/css/main.css">
<style>
div#topMenu {
	position: absolute;
	float: left;
	display: inline-block;
	top: 20px;
	left: 250px;
	color: white;
	
}

div#topMenu a {
	color: white;
	font-size: 18px;
	font-weight: bold;
	font-family: "Trebuchet MS", Dotum, Arial;
}
</style>
<decorator:head />
</head>
<body>
<!-- topMenu라인 -->
<div class="topHeader">
	<div id="topMenu" style="text-align: right;">

		<a href="#">홈</a> &nbsp;|&nbsp; 
		<a href="${pageContext.request.contextPath}/loginPage.do">로그인</a> &nbsp;|&nbsp; 
		<a href="${pageContext.request.contextPath}/memberForm.do">회원가입</a><!--&nbsp;|&nbsp;-->
		<!-- <a href="#">마이페이지</a>  -->

	</div>
	<!-- header라인 -->
	
		<div id="header">
			<a href="#"> <img
				src="${pageContext.request.contextPath}/img/Main.png" alt="main">
				<jsp:include page="../jsp/layout/main_thema.jsp" />
			</a>

		</div>
	</div>
	<hr />

	<!-- middle 바디 라인 -->
	<div class="container">

		<decorator:body />
	</div>

	<!-- footer 바디 라인 -->
	<div id="footer">
		<div class="wrap">
			<div class="inner">
				<div class="store_main">
					<dl>
						<dd>
							<img src="${pageContext.request.contextPath}/img/Main.png"><br>
							<span>COPYRIGHT©2020(주)예담 .ALL RIGHTS RESERVED.<a href="#">이용약관</a><a
								href="#">개인정보 취급방침</a>
							</span><br> 사업자등록번호: (주) 123-45-12345 ㅣ &nbsp;E-mail:
							escape@yedam.ac<br> 대구동성로점 사업자등록번호: 123-12-12345 ㅣ
							&nbsp;E-mail : escape@yedam.ac<br> 이스케이프
						</dd>
					</dl>
				</div>
			</div>
		</div>
		<!--// wrap -->
	</div>
</body>
</html>

