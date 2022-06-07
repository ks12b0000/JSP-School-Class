<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	String name = "이순신";
	public String getName(){ return name;}
	public int add(int num1, int num2) {
		return num1 + num2;
	}
%>

<%
	String age = request.getParameter("age");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>스크립트 요소</title>
</head>
<body>
	<%
		int result = add(10,20);
	/*
		자바 코드에 대한 주석문
	*/
	%>
	덧셈 결과1 : <%= result %><br/>
	덧셈 결과2 : <%= add(30, 40) %>
	<br/>
	<br/>
	<%-- JSP 주석 --%>
	<h1>안녕하세요. <%= name %>님!</h1>
	<h1>나이는 <%= age %>살입니다</h1>
	<h1>나이+10은 <%= Integer.parseInt(age)+10 %>살입니다</h1>
</body>
</html>