package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import dao.ProductTypeDao;
import dao.ProlistDao;
import dto.Prolist;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;

public class ProlistService {
		private ProlistDao prolistDao = new ProlistDao();
		private ProductTypeDao ptd = new ProductTypeDao();
		
		public Map<Integer, List<Prolist>> arrageProduct() {
			Connection conn =null;
			
			
			try {
				conn = ConnectionProvider.getConnection();
				ArrayList<Integer> ptl = ptd.selectByTypeId(conn);
				
				
				Map<Integer, List<Prolist>> productListofType = prolistDao.selectByAll(conn, ptl);
				
				return productListofType;
			}catch(SQLException e){
				
				throw new RuntimeException(e);
			}finally {
			}
		
			
		} 
}