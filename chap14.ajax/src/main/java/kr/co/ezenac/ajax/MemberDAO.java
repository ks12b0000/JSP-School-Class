package kr.co.ezenac.ajax;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class MemberDAO {
	private Connection conn;
	private PreparedStatement psmt;
	private DataSource dataFactory;
	
	public MemberDAO() {
		try {
			Context ctx = new InitialContext();
			Context envContext = (Context)ctx.lookup("java:/comp/env");
			dataFactory = (DataSource)envContext.lookup("jdbc/oracle");
			
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	// 아이디 중복체크 메서드
	public boolean isDuplicated(String id) {
		boolean result = false;
		
		try {
			conn = dataFactory.getConnection();
			String query = "SELECT DECODE(COUNT(*),1,'true','false') AS result FROM T_MEMBER ";
			query += "WHERE ID = ?";
			
			psmt = conn.prepareStatement(query);
			psmt.setString(1, id);
			ResultSet rs = psmt.executeQuery();
			
			rs.next();
			result = Boolean.parseBoolean(rs.getString("result"));
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("ID 중복 여부 체크 중 에러 발생");
		}
		
		
		return result;
	}
	
	
	
	
	
}
