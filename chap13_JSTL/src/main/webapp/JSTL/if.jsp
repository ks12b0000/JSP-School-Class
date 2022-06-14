<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<%
	request.setCharacterEncoding("UTF-8");
%>

<c:set var="id" value="ezen03" scope="page" />
<c:set var="name" value="${'이순신' }" />
<c:set var="number" value="100" />
<c:set var="String" value="100" />

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Insert title here</title>
</head>
<body>
	<c:if test="${true }">			<!-- 조건식이 true이므로 항상 참임 -->
		<h4>항상 참입니다.</h4>
	</c:if>
	
	<c:if test="${true }" var="result">
		<h4>EL 양쪽에 빈 공백이 있는 경우</h4>
	</c:if>
	result : ${result }<br/>
	
	<c:if test="${13 == 13 }">		<!-- 조건식에 비교 연산자를 사용 -->
		<h4>두 값은 같습니다.</h4>
	</c:if>
	
	<c:if test="${13 != 13 }">
		<h4>출력되지 않음</h4>
	</c:if>
	
	<c:if test="${(id == 'ezen03') && (name == '이순신') }">		<!-- 조건에 논리연산자 사용 -->
		<h4>아이디는 ${id }이고, 이름은 ${name }입니다.</h4>
	</c:if>
	
	<h4>JSTL의 if 태그로 짝수/홀수 판단하기</h4>
	<c:if test="${number mod 2 eq 0 }">
		${number }는 짝수입니다.
	</c:if>
	result : ${result }<br/>
	
	<h4>문자열 비교와 else 구문처럼 사용하기</h4>
	<c:if test="${String eq 'Java' }" var="result2">
		출력되지 않음<br/>
	</c:if>
	<c:if test="${not result2 }">
		'Java'와 String은 같지 않습니다.<br/>
	</c:if>
	
	<h4>조건식 주의사항</h4>
	<c:if test="ezen" var="result3">
		EL이 아닌 일반 값이 오면 무조건 false를 반환함<br/>
	</c:if>
	result3 : ${result3 }<br/>
	
	<c:if test="true" var="result4">
		EL이 아닌 일반 값으로 true가 사용되는 것은 예외임<br/>
	</c:if>
	result4 : ${result4 }<br/>
	
	<c:if test="tRuE" var="result5">
		EL이 아닌 일반 값으로 true가 대소문자에 상관없이 항상 true 반환<br/>
	</c:if>
	result5 : ${result5 }<br/>
	
</body>
</html>