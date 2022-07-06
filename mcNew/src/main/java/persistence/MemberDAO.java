package persistence;

import java.sql.Connection;
import java.sql.SQLException;

import domain.MemberDTO;

public interface MemberDAO {

   //로그인
   MemberDTO login(Connection conn, String userId, String userPwd) throws SQLException;
   
   //로그인 맴버 있는지 확인
   MemberDTO loginCheck(Connection conn, String userId, String userPwd) throws SQLException;
   
   //회원가입 
}