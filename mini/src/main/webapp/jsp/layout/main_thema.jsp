<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
 	<link rel= "stylesheet" href="/mini/css/mainmenu.css"> 
</head>
<body>
	
	<div align="center">
		<div id='menu'>
			<nav id="topMenu" >
				<ul>

					<li><a class="menuLink" href="${pageContext.request.contextPath}/loginPage.do">로그인</a></li>
					<li>|</li>
					<li><a class="menuLink" href="#"">홈</a></li>
					<li>|</li>
					<li><a class="menuLink" href="#">테마소개</a></li>
					<li>|</li>
					<li><a class="menuLink" href="#">예약</a></li>				
					<li>|</li>
					<li><a class="menuLink" href="${pageContext.request.contextPath}/memberForm.do">회원가입</a></li>		
						
					<li><a class="menuLink" href="#">이벤트</a></li>				
					<li>|</li>	
					<li><a class="menuLink" href="#">리뷰/Q&A/공지</a></li>
					<li>|</li>	
					<li><a class="menuLink" href="${pageContext.request.contextPath}/reserv.do">마이페이지</a></li>
					<!-- <li>|</li>
					<li><a class="menuLink" href="#">오시는길</a></li> -->
				</ul>
			</nav>
		</div>
	</div>
	
</body>
</html>