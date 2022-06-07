package kr.co.ezenac03;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/gugu")
public class GuguServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public GuguServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init 메서드 호출");
	}

	
	public void destroy() {
		System.out.println("destroy 메서드 호출");
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		int dan;
		
		if(request.getParameter("dan") != "") {
			dan = Integer.parseInt(request.getParameter("dan"));		// 전송된 dan의 값을 받아옴
			
			out.print("<html>");
			out.print("<body>");
			
			out.print("<table border=1 width=800 align=center>");
			out.print("<tr align=center bgcolor='#FFFF66'>");
			out.print("<td colspan=2>"+dan+"단 출력 </td>");						
			out.print("</tr>");
			
			for(int i = 1; i < 10; i++) {						// for문 이용해서 연속해서 결과를 
				if(i % 2 == 0) {								// 테이블 행으로 출력함
					out.print("<tr align=center bgcolor='#ACFA58'>");
				}
				else {
					out.print("<tr align=center bgcolor='#81BEF7'>");
				}
				out.print("<td width=400>");
				out.print(dan +"*"+ i);				
				out.print("</td>");				
				out.print("<td width=400>");
				out.print(dan * i);				
				out.print("</td>");
				out.print("</tr>");
			}			
			
		}
		else {
			out.print("<h3>숫자를 입력해 주세요.</h3> <a href='http://localhost:8080/chap02_Servlet/gugudan.html'>단 입력<a>");
		}
		out.print("</table>");
		out.print("</body>");
		out.print("</html>");
	}

}
