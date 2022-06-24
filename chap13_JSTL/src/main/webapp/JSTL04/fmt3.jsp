<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>JSTL - fmt3</title>
</head>
<body>
	<h4>로케일</h4>
	<c:set var="today" value="<%= new Date() %>" />
	
	한글로 설정 : <fmt:setLocale value="ko_kr"/>
	<fmt:formatNumber value="10000" type="currency" /><br/>
	<fmt:formatDate value="${today }"/><br/>
	
	영어로 설정 : <fmt:setLocale value="en_Us"/>
	<fmt:formatNumber value="10000" type="currency" /><br/>
	<fmt:formatDate value="${today }"/><br/>
	
	프랑스로 설정 : <fmt:setLocale value="ca_FR"/>
	<fmt:formatNumber value="10000" type="currency" /><br/>
	<fmt:formatDate value="${today }"/><br/>
</body>
</html>