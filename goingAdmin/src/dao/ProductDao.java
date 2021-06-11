package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jdbc.JdbcUtil;
import model.Product;

public class ProductDao {
	
	public List<Product> selectAll(Connection conn) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(
					"select * from product order by productID");
			
			rs = pstmt.executeQuery();
			List<Product> result = new ArrayList<>();
			while(rs.next()) {
				result.add(convertProduct(rs));
			}
			return result;
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		
	}
	
	private Product convertProduct(ResultSet rs) throws SQLException {
		return new Product(
				rs.getInt("productID"), rs.getInt("productTypeID"), rs.getString("productName"), rs.getInt("productPrice"),
				rs.getString("productImage"), rs.getString("productDesc"), rs.getInt("productLove"), rs.getString("productSellStart"),
				rs.getString("productSellEnd"), rs.getString("productSellYN"));
	}
}
