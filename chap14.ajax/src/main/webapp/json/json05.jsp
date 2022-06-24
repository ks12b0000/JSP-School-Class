<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>JSON ajax 테스트</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$("#checkJson").click(function() {
				/* 전송할 회원정보를 JSON 형식으로 만듦 */
				let __jsonInfo = '{"name":"이순신", "age":30, "gender":"남자", "nickname":"충무공"}'
				$.ajax({
					type: "post",
					url: "${contextPath}/json",
					data: {jsonInfo: __jsonInfo},	/* 매개변수 이름 jsonInfo로 JSON 데이터를 ajax로 전송 */
					success: function(data, textStatus) {
						
					},
					error: function(data, textStatus) {
						
					},
					complete: function(data, textStatus) {
						
					}
				})
			})
		})
	</script>
</head>
<body>
	<a id="checkJson" style="cursor: pointer;">전송</a><br/><br/>
	<div id="output"></div>
</body>
</html>