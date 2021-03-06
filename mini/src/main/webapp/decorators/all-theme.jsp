<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


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
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

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
	<c:set var="iidd" value="${id}" />
	<c:set var= "idd" value="${fn:substring(iidd ,0 , 5)}" />
	
	<c:if test="${idd ne 'admin' }" >
		<jsp:include page="../jsp/layout/sys_thema.jsp" />
	</c:if>
	
	<c:if test="${idd eq 'admin' }" >
		<jsp:include page="../jsp/layout/owner_sys.jsp" />
	</c:if> 
	<!-- header라인 -->
	
	<div id="header">
		<a href="${pageContext.request.contextPath}/main.do"> <img
			src="${pageContext.request.contextPath}/img/Main.png" alt="main">
			
			<c:if test="${idd ne 'admin' }" >
				<jsp:include page="../jsp/layout/main_thema.jsp" />
			</c:if>
			
			<c:if test="${idd eq 'admin' }" >
				<jsp:include page="../jsp/layout/owner_main.jsp" />
			</c:if> 	
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

