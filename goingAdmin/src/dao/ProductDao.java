package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import jdbc.JdbcUtil;
import model.Product;

public class ProductDao {

	public List<Product> selectAll(Connection conn) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("select * from product order by productID");

			rs = pstmt.executeQuery();
			List<Product> result = new ArrayList<>();
			while (rs.next()) {
				result.add(convertProduct(rs));
			}
			return result;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}

	}

	public int createProduct(Connection conn, Product p) throws SQLException {
		PreparedStatement pstmt = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			pstmt=conn.prepareStatement("insert into product values(prodidseq.nextval, ?, ?, ?, ?, ?, ?, sysdate, null, ?)");
			pstmt.setInt(1, p.getProductType());
			pstmt.setString(2, p.getProductName());
			pstmt.setInt(3, p.getProductPrice());
			pstmt.setString(4, p.getProductImage());
			pstmt.setString(5, p.getProductDesc());
			pstmt.setInt(6, p.getProductLove());
			pstmt.setString(7, p.getProductSellYN());
			
			pstmt.executeUpdate();
			
			stmt = conn.createStatement();
			String query = "select last_value(productID) over() from product";
			rs = stmt.executeQuery(query);
			int lastProductid = 0;
			if (rs.next()) {
				lastProductid = rs.getInt(1);
			}
			return lastProductid;
		}finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
			JdbcUtil.close(stmt);
		}
	}

	private Product convertProduct(ResultSet rs) throws SQLException {
		return new Product(rs.getInt("productID"), rs.getInt("productTypeID"), rs.getString("productName"),
				rs.getInt("productPrice"), rs.getString("productImage"), rs.getString("productDesc"),
				rs.getInt("productLove"), rs.getString("productSellStart"), rs.getString("productSellEnd"),
				rs.getString("productSellYN"));
	}

	public Product getSelectById(Connection conn, int productId) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Product result = null;
		try {
			pstmt = conn.prepareStatement("select * from product where productid = ?");
			pstmt.setInt(1, productId);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = convertProduct(rs);
			}
			
			return result;
		}finally {
			pstmt.close();
			rs.close();
		}
		
	}
}
