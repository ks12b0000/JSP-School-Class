<%@page import="kr.co.ezenac.dto.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setAttribute("requestString", "request 영역의 문자열");
	request.setAttribute("requestPerson", new Person("이방원",32));
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>request 영역</title>
</head>
<body>
	<h2>request 영역의 속성갑 삭제하기</h2>
	<%
		request.removeAttribute("requestString");
		request.removeAttribute("requestPerson1");
	%>
	
	<h2>request 영역의 속성갑 읽기</h2>
	<%
		Person rPerson = (Person)request.getAttribute("requestPerson");
	%>
	
	<ul>
		<li>String 객체 : <%= request.getAttribute("requestString") %></li>
		<li>Person 객체 : <%= rPerson.getName() %>, <%= rPerson.getAge() %></li>
	</ul>
	
	<h2>포워드된 페이지에서 request 영역 속성값 읽기</h2>
	<%
		request.getRequestDispatcher("requestForward.jsp?paramEzen=이젠&paramAddress=GangNam")
		.forward(request, response);
	%>
	
</body>
</html>