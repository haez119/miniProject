<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
 <link rel= "stylesheet" href="/mini/css/mainmenu.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>

$(function(){
	
	var thiss;
	
	$('.menuLink').click(function (event) {
		//event.preventDefault();
		
		$(thiss).css( {'background-color':'', color:'' } );
		$(this).css( {'background-color':'darkgray', color:'black' } );

	});
		
});
</script> 

</head>
<body>

	<div align="center">
		<div id='menu'>
			<nav id="topMenu" >
				<ul>
					<li><a class="menuLink" href="#">홈</a></li>
					<li>|</li>
					<li><a class="menuLink" href="${pageContext.request.contextPath}/reserveList.do">테마소개</a></li>
					<li>|</li>
					<li><a class="menuLink" href="${pageContext.request.contextPath}/reserveInsert.do">예약</a></li>				
					<li>|</li>
					<li><a class="menuLink" href="${pageContext.request.contextPath}/eventlist.do">이벤트</a></li>				
					<li>|</li>	
					<li><a class="menuLink" href="#">공지사항</a></li>				
					<li>|</li>	
					<li><a class="menuLink" href="${pageContext.request.contextPath}/board.do">리뷰/Q&A</a></li>
					<%-- <li>|</li>	
					<li><a class="menuLink" href="${pageContext.request.contextPath}/reservation.do">마이페이지</a></li> --%>
					<!-- <li>|</li>
					<li><a class="menuLink" href="#">오시는길</a></li> -->
				</ul>
			</nav>
		</div>
	</div>
	
</body>
</html>