package kr.co.ezenac02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/login5")
public class LoginServlet05 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init 메서드 호출");
	}


	public void destroy() {
		System.out.println("destroy 메서드 호출");
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet 메서드 호출");
		
	}


	private void doHandle(HttpServletRequest request, HttpServletRequest request2) {
		System.out.println("doHandle 메서드 호출");
		
		String userid = request.getParameter("user_id");
		String userpw = request.getParameter("user_pw");
		System.out.println("아이디 : " + userid);
		System.out.println("비밀번호 : " + userpw);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("doPost 메서드 호출");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("user_id");
		String pw = request.getParameter("user_pw");
		String address = request.getParameter("user_address");		//hidden으로 전송된 값을 받아옴
		
		System.out.println("아이디 : " + id);
		System.out.println("비밀번호 : " + pw);
		System.out.println("주소 : " + address);
		
		String data = "<html>";			
		data += "<body>";
		data += "아이디 : " + id;
		data += "<br/>";
		data += "비밀번호 : " + pw;
		data += "<br/>";
		data += "주소 : " + address;
		data += "<br/>";		
		data += "</body>";
		data += "</html>";
		
		out.print(data);			//전송된 값을 웹 브라우저로 출력함
	}

}
