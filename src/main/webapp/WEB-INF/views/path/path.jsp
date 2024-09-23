<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>상대 경로와 절대 경로 테스트</h1>
	
	<img src="${pagecontext.request.contextPath}/images/404/404.png"> <br>
	
	<img src="${pagecontext.request.contextPath}/images/404/404.png">
</body>
</html>