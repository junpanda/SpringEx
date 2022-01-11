<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>변수 정의 하기(c:set)</h2>
	<!-- int number1 -->
	<c:set var="number1" value="100"/>
	
	<h4>${number1 }</h4>
	
	<!-- int number2 -->
	<c:set var="number2">200</c:set>
	<h4>${number2 }</h4>
	
	<h4>${number1 + number2 }</h4>
	
	<h1>변수 출력하기(c:out)</h1>
	<h4><c:out value="900" /></h4>
	<h4><c:out value="${number1 }"/></h4>
	
	<c:out value="<script>alert('출력')</script>"/>
	<c:out value="<script>alert('출력')</script>" escapeXml="true"/>
	<c:out value="<script>alert('출력')</script>" escapeXml="false"/>
	
	<h2>조건문</h2>
	
	<c:if test="true">
		<h4>조건이 참이다.</h4>
	</c:if>
</body>
</html>