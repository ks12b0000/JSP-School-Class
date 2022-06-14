<%@page import="kr.co.ezenac.jstl.Person"%>
<%@page import="java.util.LinkedList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>JSTL - forEach (향상된 for문-collection)</title>
</head>
<body>
	<h4>List 컬랙션</h4>
	<%
		LinkedList<Person> lists = new LinkedList<>();
		lists.add(new Person("이순신", 34));
		lists.add(new Person("정도전", 40));
		lists.add(new Person("이도", 36));
	%>
	
	<c:set var="lists" value="<%= lists %>" />
	<c:forEach items="${lists }" var="list">
		<li>
			이름 : ${list.name }, 나이 : ${list.age }
		</li>
	</c:forEach>
</body>
</html>