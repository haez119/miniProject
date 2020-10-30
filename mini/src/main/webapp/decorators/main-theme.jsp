<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<decorator:head />
</head>
<body>

    <p><b>메뉴바</b> <decorator:title /> </p>
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

