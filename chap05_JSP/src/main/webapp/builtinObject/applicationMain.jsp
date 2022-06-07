<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>내장 객체 - application</title>
</head>
<body>
	<h2>web.xml에 설정한 내용 읽어오기</h2>
	초기화 매개변수 : <%= application.getInitParameter("INIT_PARAM") %>
	
	<h2>서버의 물리적 경로 얻어오기</h2>
	application 내장 객체 : <%= application.getRealPath("/builtinObject") %>
	
	<%!
		public String useImplicitObject() {
			return this.getServletContext().getRealPath("/builtinObject");
	}
	%>
	
	<ul>
		<li>this 사용 : <%= useImplicitObject() %></li>
	</ul>
</body>
</html>