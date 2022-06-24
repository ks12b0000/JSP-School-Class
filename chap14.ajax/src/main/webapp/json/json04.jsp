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
								/* members 배열에 회원정보 객체의 name/value 쌍으로 저장 */
				let jsonStr = '{"members":[{"name":"이순신", "age":30, "gender":"남자", "nickname":"충무공"}, {"name":"신사임당", "age":40, "gender":"여자", "nickname":"오만원"}]}'	/* 회원정보 */
				let jsonInfo = JSON.parse(jsonStr)					/* JSON 자료형을 리턴함 */
				
				let output = "회원 정보<br/>"
				output += "===================<br/>"	
				for(let i in jsonInfo.members) {
					output += "이름: " + jsonInfo.members[i].name + "<br/>"		/* 문자열에서 JSON 객체 속성을 가져옴 */
					output += "나이: " + jsonInfo.members[i].age + "<br/>"
					output += "성별: " + jsonInfo.members[i].gender + "<br/>"
					output += "별명: " + jsonInfo.members[i].nickname + "<br/><br/><br/>"
				}	
				
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