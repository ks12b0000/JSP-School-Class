<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="includeFile.jsp" %>	<!-- 다른 JSP 파일 포함 -->
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>include 지시어</title>
</head>
<body>
	<%
		out.println("오늘 날짜 : " + today);
		out.println("<br/>");
		out.println("내일 날짜 : " + tomorrow);
	%>
</body>
</html>