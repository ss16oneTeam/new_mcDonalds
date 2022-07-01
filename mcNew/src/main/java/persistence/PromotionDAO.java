package persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import domain.PromotionDTO;

public interface PromotionDAO {
	ArrayList<PromotionDTO> selectList(Connection con)throws SQLException;
	
	List<PromotionDTO> selectImg(Connection con)throws SQLException;
	
}
