<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>OuterPage</title>
</head>
<body>
	<h2>외부 파일2</h2>
	<% String newVar2 = "이젠 IT 프로그래밍 과정"; %>
	<ul>
		<li>page 영역 속성 : <%= pageContext.getAttribute("pAttr") %></li>
		<li>request 영역 속성 : <%= request.getAttribute("rAttr") %></li>
	</ul>
</body>
</html>