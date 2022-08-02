<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Donut Page</title>
</head>
<body>
<h1>Here are some Donuts</h1>
<ol>
	<c:forEach var="donut" items="${donuts}">
	<li><a href="/details?id=${donut.id}">${donut.name}</a></li>
	</c:forEach>
</ol>
</body>
</html>