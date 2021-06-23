package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.SearchDao;
import jdbc.connection.ConnectionProvider;
import model.Prolist;

public class SearchService {
		private SearchDao searchDao = new SearchDao();
		
		public List<Prolist> searchKey(String Keyword) throws SQLException{
			Connection conn = null;
			
				conn = ConnectionProvider.getConnection();
				List<Prolist> searchD =  searchDao.Search(conn, Keyword);
				
				
			
			return searchD;
			
		}
}
