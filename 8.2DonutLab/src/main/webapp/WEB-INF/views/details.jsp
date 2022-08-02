<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Donut Specifics</title>
</head>
<body>
<h1>${donut.name}</h1>
Calories: ${donut.calories}
<br>
Extras: <ul>
		<c:forEach var="extra" items="${donut.extras}">
		<li>${extra}</li>
		</c:forEach>
</ul>
<br>
<br>
<img src="${donut.photo}"width="250" height="250">
<a href="/">Go Home Please</a>
</body>
</html>