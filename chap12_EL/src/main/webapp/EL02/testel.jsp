<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 변수 선언
	pageContext.setAttribute("num1", 9);
	pageContext.setAttribute("num2", "10");
	
	pageContext.setAttribute("nullstr", null);
	pageContext.setAttribute("empty", "");
	pageContext.setAttribute("lengthZero", new Integer[0]);
	pageContext.setAttribute("sizeZero", new ArrayList());
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>el - 연산자</title>
</head>
<body>
	${numberVar = 10 }				<!-- 할당과 동시에 출력 -->
	${numberVar = 10;'' }<br/>  	<!-- 할당만 되고 출력은 되지 않음 -->
	
	<h3>empty 연산자</h3>
	empty nullStr : ${empty nullStr } <br/>
	empty emptyStr  ${empty emptyStr }<br/>
	empty lengthZero : ${empty lengthZero }<br/>
	empty sizeZero	:	${empty sizeZero }<br/>
	
	<h3>삼항 연산자</h3>
	num1 gt num2 ? "참" : "거짓" => ${num1 gt num2 ? "num1이 크다" : "num2가 크다" }
	
	<h3>null 연산</h3>
	null + 10 : ${null + 10 }<br/>		<!-- null은 모두 0으로 처리됨 -->
	nullStr + 10 : ${nullStr + 10 }<br/>
</body>
</html>









