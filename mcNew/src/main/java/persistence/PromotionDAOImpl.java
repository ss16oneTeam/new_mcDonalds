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

public class PromotionDAOImpl implements PromotionDAO{
	
	private PromotionDAOImpl() {}
	 private static PromotionDAOImpl instance = new PromotionDAOImpl();
	public static PromotionDAOImpl getInstance() {
		return instance;
	}

	@Override
	public ArrayList<PromotionDTO> selectList(Connection con) throws SQLException {
		
		ArrayList<PromotionDTO> Plist=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql= " select p_title, IMGVD_PATH , i.p_code "
				+ " from promotion p join PROMOTION_IMG i on p.p_code = i.p_code "
				+ " where ((REGEXP_LIKE(i.p_code,'^P|^E') and TO_CHAR(SYSDATE, 'MM/dd') <= TO_CHAR(P_ENDDATE, 'MM/dd') "
				+ " and REGEXP_LIKE(imgvd_path,'promotion|card') ) OR i.p_code LIKE 'E%' ) and  imgvd_path not like '%48471.jpg'";
		
		
		
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				Plist = new ArrayList<PromotionDTO>();
				PromotionDTO dto = null;
				do {
					dto=new PromotionDTO();
					dto.setP_title(rs.getString("p_title"));
					dto.setIMGVD_PATH(rs.getString("IMGVD_PATH"));
					dto.setP_code(rs.getString("IMGVD_PATH"));
					
					Plist.add(dto);
					
				} while (rs.next());
				
			}//if
			
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			JdbcUtil.close(pstmt);
	        JdbcUtil.close(rs);        
		}
		
		
		return Plist;
	}//

	@Override
	public List<PromotionDTO> selectImg(Connection con) throws SQLException {
		
		String sql = "SELECT imgvd_path "
					+ "FROM promotion_img "
					+ "WHERE imgvd_path like '%main%' ";
		
		ArrayList<PromotionDTO> list = null;
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;

	      try {
	         pstmt = con.prepareStatement(sql);
	         rs = pstmt.executeQuery();
	         if ( rs.next() ) {
	            list = new ArrayList<PromotionDTO>();
	            PromotionDTO dto = null;
	            do {
	               dto =  new PromotionDTO();

	               dto.setIMGVD_PATH(rs.getString("IMGVD_PATH"));
	               
	               list.add(dto);
	               
	            } while ( rs.next() );
	         } 
	      } finally {
	         JdbcUtil.close(pstmt);
	         JdbcUtil.close(rs);         
	      } // finally

	      return list;
	}

	
	
	


}
