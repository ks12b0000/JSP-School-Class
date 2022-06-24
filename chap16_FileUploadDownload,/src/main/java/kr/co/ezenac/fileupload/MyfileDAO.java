package kr.co.ezenac.fileupload;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import kr.co.ezenac.common.JDBConnection;

public class MyfileDAO extends JDBConnection {

	// 새로운 게시물을 입력
	public int insertFile(MyfileDTO dto) {
		int applyResult = 0;
		
		String query = "INSERT INTO MYFILE "
				+ " (IDX, NAME, TITLE, CATE, OFILE, SFILE) "
				+ " VALUES (SEQ_BOARD_NUM.nextval, ?, ?, ?, ?, ?)";
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, dto.getName());
			psmt.setNString(2, dto.getTitle());
			psmt.setNString(3, dto.getCate());
			psmt.setNString(4, dto.getOfile());
			psmt.setNString(5, dto.getSfile());
			
			applyResult = psmt.executeUpdate();
			
			
		} catch (SQLException e) {
			System.out.println("insert 중 예외 발생");
			e.printStackTrace();
		}
		
		return applyResult;
	}
	
	// 파일 목록 반환
	public List<MyfileDTO> myFileList() {
		List<MyfileDTO> fileList = new ArrayList<>();
		
		String query = "SELECT * FROM MYFILE ORDER BY IDX DESC";
		
		try {
			psmt = con.prepareStatement(query);		// 쿼리준비
			rs = psmt.executeQuery();				// 쿼리실행
			
			while(rs.next()) {						// 목록안의 파일 수만큼 반복
				MyfileDTO dto = new MyfileDTO();
				dto.setIdx(rs.getString(1));
				dto.setName(rs.getString(2));
				dto.setTitle(rs.getString(3));
				dto.setCate(rs.getString(4));
				dto.setOfile(rs.getString(5));
				dto.setSfile(rs.getString(6));
				dto.setPostdate(rs.getString(7));
				
				fileList.add(dto);					// 목록에 추가
				
			}
		} catch (SQLException e) {
			System.out.println("select 시 예외 발생");
			e.printStackTrace();
		}
		
		return fileList;							// 목록 반환
	}
	
}
