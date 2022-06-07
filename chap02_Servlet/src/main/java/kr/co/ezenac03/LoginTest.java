package kr.co.ezenac03;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/logintest")
public class LoginTest extends HttpServlet {
	private static final long serialVersionUID = 1L;


	public void init(ServletConfig config) throws ServletException {
		System.out.println("init 메서드 호출");
	}

	
	public void destroy() {
		System.out.println("destroy 메서드 호출");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("user_id");
		String pw = request.getParameter("user_pw");
		
		System.out.println("아이디 : " + id);
		System.out.println("비밀번호 : " + pw);
		
		if(id != null && (id.length() != 0)) {
			out.print("<html>");
			out.print("<body>");
			out.print(id +"님! 로그인 하였습니다.");
			out.print("</body>");
			out.print("</html>");
		}
		else {			//ID와 비밀번호가 없으면 다시 로그인창으로 이동함.
			out.print("<html>");
			out.print("<body>");
			out.print("아이디를 입력하세요!");
			out.print("<br/>");
			out.print("<a href='http://localhost:8080/chap02_Servlet/login04.html'>로그인 창으로 이동합니다.</a>");
			out.print("</body>");
			out.print("</html>");
			
		}
	}

}
