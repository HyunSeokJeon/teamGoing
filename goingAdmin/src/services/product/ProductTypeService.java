package services.product;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import dao.ProductTypeDao;
import jdbc.connection.ConnectionProvider;
import model.ProductType;

public class ProductTypeService {
	private ProductTypeDao pTypeDao = new ProductTypeDao();
	
	
	public List<ProductType> getProductTypeList() throws SQLException{
		try(Connection conn = ConnectionProvider.getConnection()){
			List<ProductType> pTypeList = pTypeDao.selectAll(conn);
			return pTypeList;
		}
		
	}
	
	public void insertItem(String productType) throws SQLException {
		try(Connection conn = ConnectionProvider.getConnection()){
			int result = pTypeDao.insertOneItem(conn, productType);
			if(result <= 0) {
				// insert잘못됨, 에러처리
			}
		}
		
	}
	
}
