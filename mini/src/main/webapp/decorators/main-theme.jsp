<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<!-- 순서 1. 스타일, 2. 스크립트 - 1. 제이쿼리 2. 나머지 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script> -->
<decorator:head />
</head>
<body>
	<div class="jbMenu">
	<div id="header">
		<div class="wrap">
			<h1><a href="/main.asp"><img src="../images/common/logo.png" alt="Rooms A"></a></h1>
			<h2>주메뉴</h2>
			<ul id="nav">
				<li><a href="/sub_01/sub01.asp">룸즈에이</a></li>
				<li><a href="/sub_01/sub01_1.asp">테마소개</a></li>
				<li><a href="/sub_02/sub02_1.asp">예약</a></li>
				<li><a href="/sub_07/event_list.asp">이벤트/공지</a></li>
				<li><a href="/sub_01/dd.asp">오시는 길</a></li>
<!--			<li><a href="/sub_08/sub_01.html">가맹문의</a></li> -->
			</ul> <!--// nav -->
		</div> <!--// wrap -->
	
	</div> <!--// header -->
</div>
    <hr />
    <div class="container">
    	<decorator:body />
    </div>
    <hr />
<div id="footer">
	<div class="wrap">
		<div class="inner">
			<div class="store_main">
				<dl>
					<dd>
					   <img src="/images/common/logo.png"><br>
					   <span>COPYRIGHT©2017룸즈에이 .ALL RIGHTS RESERVED.<a href="/sub/sub_ya.html">이용약관</a><a href="/sub/sub_info.html">개인정보 취급방침</a></span><br>
					   사업자등록번호: (주) 252-86-00226 ㅣ &nbsp;E-mail: rooms_a@naver.com<br>
					   광주수완점 사업자등록번호: 635-68-00354 ㅣ &nbsp;E-mail : limdaekyung@naver.com<br>
					   룸즈에이
					</dd>
				</dl>
			</div>
		</div>
	</div> <!--// wrap -->
</div></body>
</html>