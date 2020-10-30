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
	<h1>Main</h1>
    <p><b>메뉴바</b> <decorator:title /> </p>
    <hr />
    <div class="container">
    	<decorator:body />
    </div>
    <hr />
    <p>바닥글</b></p>
</body>
</html> 