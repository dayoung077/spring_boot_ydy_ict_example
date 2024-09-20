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
			<th>사원번호</th>
			<th>사원이름</th>
			<th>직업</th>
			<th>매니저</th>
			<th>입사일자</th>
			<th>sal</th>
			<th>sal 등급</th>
		</tr>
		
		<c:forEach var="vo" items="${empList}">
			<tr>
				<th>${vo.emp.empno}</th>
				<th>${vo.emp.ename}</th>
				<th>${vo.emp.job}</th>
				<th>${vo.emp.mgr}</th>
				<th>${vo.emp.hiredate}</th>
				<th><fmt:formatNumber value="${vo.emp.sal}" type="number"/></th>
                <!-- 숫자 1000을 1,000으로 표시하는 태그 -->
				<th>${vo.salgrade.grade}</th>
			</tr>
		</c:forEach>
		
	</table>
</body>
</html>