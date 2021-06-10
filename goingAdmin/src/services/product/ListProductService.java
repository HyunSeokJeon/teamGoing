package services.product;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import dao.ProductDao;
import jdbc.connection.ConnectionProvider;
import model.Product;

public class ListProductService {
	
	private ProductDao productDao = new ProductDao(); 
	
	public List<Product> productList() {
		try(Connection conn = ConnectionProvider.getConnection()){
			List<Product> productList = productDao.selectAll(conn);
			return productList;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(); 
		}
		
	}
}
