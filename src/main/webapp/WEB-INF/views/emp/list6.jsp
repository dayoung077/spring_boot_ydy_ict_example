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
	<h1>emp 리스트</h1>
	<table border="1">
		<tr>
			<td>사원번호</td>
			<td>사원이름</td>
			<td>직업</td>
			<td>매니저</td>
			<td>입사일자</td>
			<td>sal</td>
			<td>sal 등급</td>
		</tr>
		
		<c:forEach var="vo" items="${empList}">
			<tr>
				<td>${vo.emp.empno}</td>
				<td>${vo.emp.ename}</td>
				<td>${vo.emp.job}</td>
				<td>${vo.emp.mgr}</td>
				<td>${vo.emp.hiredate}</td>
				<td><fmt:formatNumber value="${vo.emp.sal}" type="number"/></td>
                <!-- 숫자 1000을 1,000으로 표시하는 태그 -->
				<td>${vo.salgrade.grade}</td>
			</tr>
		</c:forEach>
		
	</table>
</body>
</html>