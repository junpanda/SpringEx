<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fn 라이브러리</title>
</head>
<body>
	
	
	<c:set var="str1" value="No pain. No gain."/>
	
	<h3>문자열 길이</h3>
	${fn:length(str1) }
	
	<h3>특정 문자열이 존재하는가?</h3>
	No가 존재하는가? ${fn:contains(str1,"No") } <br>
	no가 존재하는가? ${fn:contains(str1,"no") }<br>
	
	대소 구분 없이 no 검색 ${fn:containsIgnoreCase(str1,"no") }
	
	<c:if test="${fn:containsIgnoreCase(str1,'no') }">
		문장에 no라는 문자열이 존재 합니다. : 대소문자 구분 없이
	</c:if>
	
	<h2>특정문자열로 시작하거나 끝나는지</h2>
	
	No로 시작하는가 : ${fn:startsWith(str1,"No") }<br>
	gain.으로 끝나는지 : ${fn : endsWith(str1,"gain") } 
	
	<h2>문자열 치환</h2>
	<c:set var="str2" value="I love chicken"/>
	${str2 }<br>
	${fn:replace(str2,"chicken","bread") }
	
	<h2>문자열 쪼개기</h2>
	${fn:split(str2," ")[0] }<br>
	${fn:split(str2," ")[2] }
	
	<h2>문자열 자르기</h2>
	${fn:substring(str2,2,6) }
	
	<h2>대소 문자 변경</h2>
	모두 대문자로 : ${fn:toUpperCase(str2) } <br>
	모두 소문자로 : ${fn:toLowerCase(str2) }
	
	<h2>앞뒤 공백 제거</h2>
	<c:set var="str3" value="      hello world     "/>
	<pre>${str3 }</pre>
	
</body>
</html>