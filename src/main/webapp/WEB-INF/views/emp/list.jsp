<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
<h1>emp 리스트</h1>
<c:forEach var="emp" items="${empList}">
사원번호 : ${emp.empno} 
사원이름 : ${emp.ename} 
직업 : ${emp.job} 
매니저 : ${emp.mgr} 
입사일자 : ${emp.hiredate} 
급여 : ${emp.sal} 
보너스 : ${emp.comm} 
부서번호 : ${emp.deptno} <br>
</c:forEach>

</body>
</html>