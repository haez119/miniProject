<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel= "stylesheet" href="/mini/css/mainmenu.css"> 
</head>
<body>
	<div align="center">
		<div id='menu'>
			<nav id="topMenu" >
				<ul>
					
					<li><a class="menuLink" href="${pageContext.request.contextPath}/themaInsertForm.do">테마 등록</a></li>
					<li>|</li>	
					<li><a class="menuLink" href="${pageContext.request.contextPath}/ownerThemaList.do">테마 리스트</a></li> 
					<li>|</li>
					<li><a class="menuLink" href="${pageContext.request.contextPath}/ownerReservPage.do">예약 확인</a></li>				
					<li>|</li>
					<li><a class="menuLink" href="${pageContext.request.contextPath}/eventInsertForm.do">이벤트 등록</a></li>				
					<li>|</li>	
					<li><a class="menuLink" href="${pageContext.request.contextPath}/eventUpdate.do">이벤트 리스트</a></li>				
					<li>|</li>	
					<li><a class="menuLink" href="${pageContext.request.contextPath}/noticeView.do">공지사항 등록</a></li>				
					<li>|</li>	
					<li><a class="menuLink" href="#">리뷰/Q&A 확인</a></li>
					<!-- <li>|</li>
					<li><a class="menuLink" href="#">오시는길</a></li> -->
				</ul>
			</nav>
		</div>
	</div>
</body>
</html>