package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import dao.ProductLoveDao;
import dao.ProductTypeDao;
import dao.ProlistDao;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import model.Prolist;

public class ProlistService {
		private ProlistDao prolistDao = new ProlistDao();
		private ProductTypeDao ptd = new ProductTypeDao();
		ProductLoveDao pld = new ProductLoveDao();
		
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
		
		public List<Prolist> arrageLowProduct() throws SQLException{
			Connection conn = null;
			
			try {
				conn = ConnectionProvider.getConnection();
				List<Prolist>productListofType = ptd.selectLowPrice(conn);
				return productListofType;
			}finally {
				
			}
			
		}
		
		public List<Prolist>arrageHighProduct() throws SQLException{
			Connection conn = null;
			
			try {
				conn = ConnectionProvider.getConnection();
				List<Prolist>productListofType = ptd.selectHighPrice(conn);
				return productListofType;
			}finally {
				
			}
		}

		public Prolist getProduct(String productId) throws SQLException {
			int productID = Integer.parseInt(productId);
			String productType = null;
			Prolist prolist = new Prolist();
			try(Connection conn = ConnectionProvider.getConnection()){
				prolist = prolistDao.selectById(conn, productID);
				productType = ptd.selectProductTypeById(conn, prolist.getProductTypeID());
				prolist.setProductType(productType);
			}
			return prolist;
		}

		public boolean isLikeThisItem(String productId, String id) throws SQLException {
			int result = 0;
			try(Connection conn = ConnectionProvider.getConnection()){
				result = pld.selectByPidCid(conn, productId, id);
			}
			if(result <= 1) {
				return false;
			}else {
				return true;
			}
		}

		public void insertOrUpdatePLove(String productId, String userId, String action) throws SQLException {
			try(Connection conn = ConnectionProvider.getConnection()){
				int check;
				check = pld.selectByPidCid(conn, productId, userId);
				if (check == 0) {
					pld.insertPLove(conn,productId,userId);
					//insert
				} else {
					pld.updatePLove(conn,productId,userId,action);
					//update
				}
			}
		}
		
		
}
