<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>JSON 테스트</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$("#checkJson").click(function() {
				let jsonStr = '{"name":"이순신", "age":30, "gender":"남자", "nickname":"충무공"}'	/* 회원정보 */
				let jsonInfo = JSON.parse(jsonStr)					/* JSON 자료형을 리턴함 */
				
				let output = "회원 정보<br/>"
				output += "===================<br/>"	
				output += "이름: " + jsonInfo.name + "<br/>"		/* 문자열에서 JSON 객체 속성을 가져옴 */
				output += "나이: " + jsonInfo.age + "<br/>"
				output += "성별: " + jsonInfo.gender + "<br/>"
				output += "별명: " + jsonInfo.nickname + "<br/>"
					
				$("#output").html(output)			/* 회원이름 출력 */
			})
		})
	</script>
</head>
<body>
	<a id="checkJson" style="cursor: pointer;">출력</a><br/><br/>
	<div id="output"></div>
</body>
</html>