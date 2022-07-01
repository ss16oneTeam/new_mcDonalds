package persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import domain.PromotionDTO;

public interface PromotionDAO {
	ArrayList<PromotionDTO> selectList(Connection con)throws SQLException;

}
