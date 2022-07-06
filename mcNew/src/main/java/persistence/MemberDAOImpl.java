package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.util.JdbcUtil;

import domain.MemberDTO;

public class MemberDAOImpl implements MemberDAO{
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	private MemberDAOImpl(){}
	private static MemberDAOImpl instance = new MemberDAOImpl();
	public static MemberDAOImpl getInstance() {
		return instance;
	}

	@Override
	/* 아이디랑 패스워드를 받아서, 존재하면 멤버의 정보를 가져오는 메소드 */
	public MemberDTO login(Connection conn, String userId, String userPwd) throws SQLException {
		System.out.println(" login()- lmpl시작");

		String sql = "select mem_code, mem_id, mem_pw, mem_gender, mem_name, mem_tel, mem_lan, ad.adr_main "
				+ "from member m LEFT JOIN mem_adr ad ON(m.adr_code = ad.adr_code) "
				+ "where m.mem_id= ? and m.mem_pw= ? ";
		System.out.println(userId);
		System.out.println(userPwd);
		MemberDTO dto = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,  userId);
			pstmt.setString(2,  userPwd);
			rs = pstmt.executeQuery();
			if ( rs.next() ) {
				System.out.println("sql문 찍히나?");
				do {
					dto = new MemberDTO();             
					dto.setMem_code(rs.getString("mem_code"));
					dto.setMem_id(rs.getString("mem_id"));
					dto.setMem_pw(rs.getString("mem_pw"));
					dto.setMem_gender(rs.getString("mem_gender"));
					dto.setMem_name(rs.getString("mem_name"));
					dto.setMem_tel(rs.getString("mem_tel"));
					dto.setMem_lan(rs.getString("mem_lan"));
					dto.setAdr_code(rs.getString("adr_main"));
					System.out.println(dto.toString());

				} while ( rs.next() );
			} // 
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);         
		} // finally
		System.out.println(dto);
		return dto;
	}

	@Override
	public MemberDTO loginCheck(Connection conn, String userId, String userPwd) throws SQLException {
		System.out.println(" loginCheck()- lmpl시작");

		String sql = "select count(*)	"
					+ "FROM MEMBER	"
					+ "WHERE MEM_ID = ? AND MEM_PW = ? ";
		System.out.println(userId);
		System.out.println(userPwd);
		MemberDTO dto = null;
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1,  userId);
			pstmt.setString(2,  userPwd);
			rs = pstmt.executeQuery();
			if ( rs.next() ) {
				System.out.println("sql 세강문 찍히나?");
				do {
					dto = new MemberDTO();             
					dto.setCheck(rs.getInt(1));
					//의심 부분 1
					System.out.println(dto.toString());

				} while ( rs.next() );
			} // 
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);         
		} // finally
		System.out.println(dto);
		return dto;
	}

}