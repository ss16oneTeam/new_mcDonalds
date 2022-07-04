package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;

import domain.PromotionDTO;
import domain.StoreLocDTO;

public class StoreLocDAOImpl implements StoreLocDAO {

	private StoreLocDAOImpl() {}
	 private static StoreLocDAOImpl instance = new StoreLocDAOImpl();
	public static StoreLocDAOImpl getInstance() {
		return instance;
	}
	
	
	@Override
	public List<StoreLocDTO> selectAddr(Connection con) throws SQLException {
		
		String sql = "SELECT s_addr, s_del "
				+ "FROM STORE "
				+ "where s_del=1 ";
	
	ArrayList<StoreLocDTO> list = null;
      PreparedStatement pstmt = null;
      ResultSet rs = null;

      try {
         pstmt = con.prepareStatement(sql);
         rs = pstmt.executeQuery();
         if ( rs.next() ) {
            list = new ArrayList<StoreLocDTO>();
            StoreLocDTO dto = null;
            do {
               dto =  new StoreLocDTO();

               dto.setS_ADDR(rs.getString("s_addr"));
               dto.setS_DEL(rs.getInt("s_del"));
               
               list.add(dto);
               
            } while ( rs.next() );
         } 
      } finally {
         JdbcUtil.close(pstmt);
         JdbcUtil.close(rs);         
      } // finally

      //System.out.println("> dao.selectAddr() : " + list.size() );
      return list;
	}
	
	
	
	
}
