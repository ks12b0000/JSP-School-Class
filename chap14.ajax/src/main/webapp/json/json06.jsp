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
				$.ajax({
					type: "post",
					url: "${contextPath}/json2",
					success: function(data, textStatus) {
						let jsonInfo = JSON.parse(data)			/* 서버에서 전송한 JSON 데이터를 파싱함 */
						
						let output = "회원 정보<br/>"
							output += "===================<br/>"	
							for(let i in jsonInfo.members) {
								output += "이름: " + jsonInfo.members[i].name + "<br/>"		/* 문자열에서 JSON 객체 속성을 가져옴 */
								output += "나이: " + jsonInfo.members[i].age + "<br/>"
								output += "성별: " + jsonInfo.members[i].gender + "<br/>"
								output += "별명: " + jsonInfo.members[i].nickname + "<br/><br/><br/>"
							}	
							
							$("#output").html(output)			/* 회원이름 출력 */
					},
					error: function(data, textStatus) {
						alert("에러가 발생했습니다.")
					},
					complete: function(data, textStatus) {
						
					}
				})
			})
		})
	</script>
</head>
<body>
	<a id="checkJson" style="cursor: pointer;">회원정보 수신하기</a><br/><br/>
	<div id="output"></div>
</body>
</html>