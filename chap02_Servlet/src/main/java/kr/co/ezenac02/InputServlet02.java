package kr.co.ezenac02;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/input2")
public class InputServlet02 extends HttpServlet{
	
	@Override
	public void init() throws ServletException {
		System.out.println("init 메서드 호출");
	}
	@Override
	public void destroy() {
		System.out.println("destroy 메서드 호출");
	}
	@Override
	protected void doGet(HttpServletRequest Request, HttpServletResponse Response) throws ServletException, IOException {
		Request.setCharacterEncoding("utf-8");
		
		// 전송되어 온 name 속성들만 Enumeration 타입으로 받아옴
		Enumeration<String> enu = Request.getParameterNames();
		// 각 name을 하나씩 가져와 대응해서 전송되어 온 값을 출력함
		while(enu.hasMoreElements()) {
			String name = enu.nextElement();
			String[] values = Request.getParameterValues(name);
			for(String value : values) {
				System.out.println("name = " + name + ", value = " + value);
			}
		}
	}
}
