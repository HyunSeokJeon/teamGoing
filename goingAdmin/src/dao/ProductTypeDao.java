package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jdbc.JdbcUtil;
import model.ProductType;

public class ProductTypeDao {
	public List<ProductType> selectAll(Connection conn) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement("select * from producttype");
			rs = pstmt.executeQuery();
			List<ProductType> pTypeList = new ArrayList<>();
			while(rs.next()) {
				pTypeList.add(new ProductType(rs.getInt("productTypeID"), rs.getString("productType")));
			}
			return pTypeList;
		}finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
	}
	
	public int insertOneItem(Connection conn, String productType) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement("insert into productType values (prodTypeseq.nextval, ?)");
			pstmt.setString(1, productType);
			int result = pstmt.executeUpdate();
			return result;
		}finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
	}
}
