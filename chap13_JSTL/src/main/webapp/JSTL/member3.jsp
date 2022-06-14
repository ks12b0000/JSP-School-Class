<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- core 태그 라이브러리를 사용하기 위해 반드시 선언해야 함 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
%>

<!-- 변수 선언함. value 속성에는 표현언어 사용해 초기화할수 있음 -->
<c:set var="id" value="ezen" scope="page" />
<c:set var="pwd" value="0824" />
<%-- <c:set var="name" value="${'이순신'}" /> --%>
<c:set var="age" value="${30 }" />
<c:set var="height" value="${180 }" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Insert title here</title>
</head>
<body>
	<table border="1" align="center">
		<tr align="center" bgcolor="#99ccff">
			<td width="7%"><b>아이디</b></td>
			<td width="7%"><b>비밀번호</b></td>
			<td width="7%"><b>이름</b></td>
			<td width="7%"><b>나이</b></td>
			<td width="7%"><b>키</b></td>
		</tr>
		
		<c:choose>
			<c:when test="${empty name }">					<!-- 변수 name이 null이거나 빈문자열인지 체크 -->
				<tr align="center">
					<td colspan="5">이름을 입력하세요!</td>
				</tr>
			</c:when>
			<c:otherwise>
				<!-- 표현언어로 변수에 바로 접근하여 값 출력 -->
				<tr align="center">
					<td>${id }</td>
					<td>${pwd }</td>
					<td>${name }</td>
					<td>${age }</td>
					<td>${height }</td>
				</tr>
			</c:otherwise>
		</c:choose>
		
		
		
	</table>
</body>
</html>