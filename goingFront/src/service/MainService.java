package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import dao.ProlistDao;
import jdbc.connection.ConnectionProvider;
import model.Prolist;

public class MainService {
	ProlistDao pld = new ProlistDao();

	public List<Prolist> get7Daysleft() throws SQLException {
		List<Prolist> result = null;
		try (Connection conn = ConnectionProvider.getConnection()){
			result = pld.selectByEndDayWeekLeft(conn);
			
		}
		return null;
	}

	public List<Prolist> getTop3List() throws SQLException {
		List<Prolist> result = null;
		try (Connection conn = ConnectionProvider.getConnection()){
			result = pld.selectOrderByPLove(conn);
		}
		return result;
	}
	
}
