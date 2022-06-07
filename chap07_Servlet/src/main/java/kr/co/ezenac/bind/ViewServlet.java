package kr.co.ezenac.bind;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/viewMembers")
public class ViewServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		// 바인딩해서 넘어온 request에서 회원 정보를 가져옴
		List<MemberVO> membersList = (List<MemberVO>)request.getAttribute("membersList");
		
		
		out.print("<html>");
		out.print("<body>");
		out.print("<table border=1><tr align='center' bgcolor='lightgreen'>");
		out.print("<td>아이디</td><td>비밀번호</td><td>이름</td><td>이메일</td><td>가입일</td><td>삭제</td></tr>");
		
		for(int i=0; i<membersList.size(); i++) {
			MemberVO memberVO = membersList.get(i);	//조회한 회원 정보를 for문 <tr>태그 이용해 출력함
			String id = memberVO.getId();
			String pwd = memberVO.getPwd();
			String name = memberVO.getName();
			String email = memberVO.getEmail();
			Date joinDate = memberVO.getJoinDate();
			out.print("<tr><td>" +id+ "</td><td>"
								 +pwd+ "</td><td>"
								 +name+ "</td><td>"
								 +email+ "</td><td>"
								 +joinDate+ "</td><td>"		//삭제클릭하면 command 값과 회원 ID를 서블릿으로 전송함
								 		+ "<a href='/chap07_Servlet/member?command=delMember&id="+id+"'>삭제</a></td></tr>");
		}
				
		out.print("</table></body>");
		out.print("</html>");	
	}
}
