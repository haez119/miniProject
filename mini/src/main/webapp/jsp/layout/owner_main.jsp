<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/mini/css/mainMenu.css">

<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<a class="navbar-brand" onfocus="blur()" href="${pageContext.request.contextPath}/main.do">홈</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" 
	 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" onfocus="blur()"> 테마 </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" onfocus="blur()" 
						href="${pageContext.request.contextPath}/reserveList.do">테마리스트 </a> 
				    <a class="dropdown-item" onfocus="blur()" 
				    	href="${pageContext.request.contextPath}/ownerThemaList.do">지점 테마리스트 </a> 
				    <a class="dropdown-item" onfocus="blur()"
						href="${pageContext.request.contextPath}/themaInsertForm.do">테마등록</a>
				</div>
			</li>
			<li class="nav-item active">
			<a class="nav-link" onfocus="blur()"
			href="${pageContext.request.contextPath}/ownerReservPage.do">예약확인
			<span class="sr-only">(current)</span>
			</a>
			</li>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false" onfocus="blur()">이벤트</a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" onfocus="blur()"
								href="${pageContext.request.contextPath}/eventlist.do">이벤트
								리스트</a> <a class="dropdown-item" onfocus="blur()"
								href="${pageContext.request.contextPath}/eventUpdateList.do">지점
								이벤트 리스트</a> <a class="dropdown-item" onfocus="blur()"
								href="${pageContext.request.contextPath}/eventInsertForm.do">이벤트
								등록 </a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false" onfocus="blur()">공지사항</a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" onfocus="blur()"
								href="${pageContext.request.contextPath}/noticeListView.do">공지사항
								리스트 </a> <a class="dropdown-item" onfocus="blur()"
								href="${pageContext.request.contextPath}/noticeView.do">공지사항
								등록 </a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false" onfocus="blur()">리뷰/Q&A확인</a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" onfocus="blur()"
								href="${pageContext.request.contextPath}/boardReview.do">리뷰
								확인 </a> <a class="dropdown-item" onfocus="blur()"
								href="${pageContext.request.contextPath}/board.do">Q&A확인
							</a>
						</div></li>
				</ul>
			</div>
</nav>