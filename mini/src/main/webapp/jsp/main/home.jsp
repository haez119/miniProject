<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>
.w-100 {
	height: 300px;

	
	<!--
	슬라이드
	사진크기
	-->
	display
	:
	block;
}
</style>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 
</head>
<body>
	<div align="center" id="carouselExampleControls" class="carousel slide"
		data-ride="carousel">
		<div class="carousel-inner">
			<c:forEach items="${eventList}" var="event" varStatus='i'>
				<c:if test="${i.index eq 0 }">
					<div class="carousel-item active">
				</c:if>
				<c:if test="${i.index ne 0 }">	
					<div class="carousel-item">
				</c:if>	
						<img class="d-block w-100"
							src="${pageContext.request.contextPath}/img/${event.img}">
					</div>
			</c:forEach>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleControls"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleControls"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

	<div align="center">
		<form id='frm' name='frm' method='post' action='#'>
			<table>
				<tr>
					<td><h1>테마소개</h1></td>
					
				</tr>
			</table>
		</form>
	</div>

	<div align="center" id="carouselExampleControls2"
		class="carousel slide" data-ride="carousel">
		<div class="carousel-inner">
			<c:forEach items="${themaDisList}" var="thema" varStatus='i'>
				<c:if test="${i.index eq 0 }">
					<div class="carousel-item active">
				</c:if>
				<c:if test="${i.index ne 0 }">	
					<div class="carousel-item">
				</c:if>	
						<img class="d-block w-100"
							src="${pageContext.request.contextPath}/img/${thema.thema_img}">
					</div>
			</c:forEach>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleControls"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleControls2"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
</body>
</html>