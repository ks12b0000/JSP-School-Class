package kr.co.ezenac02;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/input")
public class inputServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	public void init(ServletConfig config) throws ServletException {
		System.out.println("init 메서드 호출");
	}


	public void destroy() {
		System.out.println("destroy 메서드 호출");
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		//한 개씩 전송된 값은 getParameter()를 이용
		String userId = request.getParameter("user_id");
		String userPw = request.getParameter("user_pw");
		
		System.out.println("아이디 : " + userId);
		System.out.println("비밀번호 : " + userPw);
		
		// 하나의 name으로 여러 값을 전송하는 경우 getParameterValues()를 이용해 배열 형태로 반환됨.
		String[] subject = request.getParameterValues("subject");
		for(String str : subject) {
			System.out.println("선택한 과목 : " + str);
		}
	}

}
