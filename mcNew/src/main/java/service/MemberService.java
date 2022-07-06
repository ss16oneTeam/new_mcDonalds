package service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.MemberDTO;
import persistence.MemberDAOImpl;


public class MemberService {
	private MemberService() {}
	private static MemberService instance = null;  

	public static MemberService getInstance() {

		if(instance == null) {
			instance = new MemberService();
		}

		return instance;
	}
	
	
	
	public MemberDTO loginMember( String userId, String userPwd){
		Connection con = null;
		try {
			con = ConnectionProvider.getConnection();
			MemberDAOImpl dao =MemberDAOImpl.getInstance();
			MemberDTO dto = null;
			MemberDTO dtoCheck = null;
			
			dtoCheck = dao.loginCheck(con, userId, userPwd);
			
			if(dtoCheck.getCheck()==0) {//판별해서 0나오면 그냥 dto 널값 반환
				return dto;
				
			}else {
				dto = dao.login(con, userId, userPwd);
				return dto;
			}

		} catch (NamingException | SQLException e) { 
			//e.printStackTrace(); 
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}

	}

}