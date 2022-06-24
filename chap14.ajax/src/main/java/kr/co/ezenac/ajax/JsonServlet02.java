package kr.co.ezenac.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;



@WebServlet("/json2")
public class JsonServlet02 extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		JSONObject totalObject = new JSONObject();				// 배열 저장할 JSONObject 선언
		JSONArray memberArray = new JSONArray();				// JSON객체 저장
		
		JSONObject memberInfo = new JSONObject();				// 회원 한명 정보가 들어가는 JSON객체 선언
		memberInfo.put("name", "이순신");
		memberInfo.put("age", "40");
		memberInfo.put("gender", "남자");
		memberInfo.put("nickname", "충무공");						// 회원정보를 name/value 쌍으로 저장함
		memberArray.add(memberInfo);							// 회원정보를 다시 memberArray 배열에 저장함
		
		memberInfo = new JSONObject();
		memberInfo.put("name", "신사임당");
		memberInfo.put("age", "50");
		memberInfo.put("gender", "여자");
		memberInfo.put("nickname", "오만원");						// 회원정보를 name/value 쌍으로 저장함
		memberArray.add(memberInfo);							// 회원정보를 다시 memberArray 배열에 저장함
		
		
		totalObject.put("members", memberArray);				
		
		String jsonInfo = totalObject.toJSONString();			// JSONObject를 문자열로 변환
		System.out.println(jsonInfo);
		
		out.print(jsonInfo); 									// JSON 데이터를 브라우저로 전송
	}
}
