package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.N_NewsDTO;
import persistence.N_NewsDAOImpl;

public class DetailService {
	public  DetailService() {}
	public static  DetailService instance=new  DetailService();
	public static  DetailService getInstance() {
		return instance;
	}//
	
	//일반글
	public N_NewsDTO viewList(int seq) {
		  Connection conn = null;
		  N_NewsDTO dto=null;
	       try {
	         conn = ConnectionProvider.getConnection();
	         N_NewsDAOImpl dao =  N_NewsDAOImpl.getInstance();
	   	    dao.increaseReaded(conn,seq);
	   	    dto = dao.view(conn,seq);
	         return dto;
	      } catch (NamingException | SQLException e) {
	         throw new RuntimeException(e);
	      } finally {
	         JdbcUtil.close(conn);
	      }
	
	
}
	//공지글(사진)
	public N_NewsDTO notiViewList(int seq) {
		  Connection conn = null;
		  N_NewsDTO dto=null;
	       try {
	         conn = ConnectionProvider.getConnection();
	         N_NewsDAOImpl dao =  N_NewsDAOImpl.getInstance();    
	   	     dao.increaseReaded(conn,seq);
	   	     dto = dao.notiView(conn,seq);
	         return dto;
	      } catch (NamingException | SQLException e) {
	         throw new RuntimeException(e);
	      } finally {
	         JdbcUtil.close(conn);
	      }
	
	}
}