<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<%
	request.setCharacterEncoding("UTF-8");
%>     
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>결과화면</title>
</head>
<body>
	<c:if test="${empty param.userId }">
		아이디를 입력하세요<br/>
		<a href="login.jsp">로그인 창</a>		
	</c:if>
	
	<c:if test="${not empty param.userId }">				<%-- id가 null 아님 체크 --%>
		<c:if test="${param.userId == 'admin' }">			<%-- id가 admin 이면 관리자 화면 출력 --%>
			<h1>관리자로 로그인 했습니다.</h1>
			<form action="#">
				<input type="button" value="회원정보 삭제하기" />
				<input type="button" value="회원정보 수정하기" />
			</form>
		</c:if>
		<c:if test="${param.userId != 'admin' }">			<%-- id가 admin이 아니면 로그인 메시지 출력 --%>
			<h1> 환영합니다.
				<c:out value="${param.userId }" />님!
			</h1>			
		</c:if>
	</c:if>
</body>
</html>