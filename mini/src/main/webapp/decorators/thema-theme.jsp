<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 화면</title>

<decorator:head />
</head>
<body>
	<h1>테마 페이지</h1>
    <p><b>텍스트 말고 메뉴들 넣으면 될 듯</b> <decorator:title /> </p>
    <hr />
    <div class="container">
    	<decorator:body />
    </div>
    <hr />
    <p>바닥글 - 로고나 지점 전화번호 사업자 번호 등등</b></p>
</body>
</html>