package persistence;

import java.sql.Connection;
import java.sql.SQLException;

import domain.MemberDTO;

public interface MemberDAO {

   //로그인
   MemberDTO login(Connection conn, String userId, String userPwd) throws SQLException;
   
   //회원가입 
}