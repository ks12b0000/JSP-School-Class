<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 포함할 파일의 경로를 변수에 저장
	String outerPage1 = "./inc/outerPage1.jsp";
	String outerPage2 = "./inc/outerPage2.jsp";
	
	// page영역과 request영역에 속성 저장
	pageContext.setAttribute("pAttr", "세종대왕");
	request.setAttribute("rAttr", "이순신");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>지시어와 액션태그 동작 방식 비교</title>
</head>
<body>
	<h2>지시어와 액션태그 동작 방식 비교</h2>
	
	<!-- 지시어방식 -->
	<%@ include file="./inc/outerPage1.jsp" %>
	<p>외부 파일에 선언한 변수 : <%= newVar1 %></p>
	
	<!-- 액션 태그 -->
	<h3>액션 태그로 페이지 포함하기</h3>
	<jsp:include page="./inc/outerPage2.jsp" />
	<jsp:include page="<%= outerPage2 %>" />
	<p>외부 파일에 선언한 변수 : <%-- <%= newVar2 %> --%></p>		<!-- 존재하지 않으니 출력되지 않음 -->
	
	
</body>
</html>





