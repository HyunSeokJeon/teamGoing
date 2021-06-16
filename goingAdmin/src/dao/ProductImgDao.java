package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jdbc.JdbcUtil;
import model.ProductImg;

public class ProductImgDao {
	public int insert(Connection conn, ProductImg pImg) throws SQLException {
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement("insert into ProductImg values (?, ?, ?, ?)");
			pstmt.setInt(1, pImg.getProductId());
			pstmt.setString(2, pImg.getpImg());
			pstmt.setString(3, pImg.getImgHead());
			pstmt.setDate(4, pImg.getRegDate());
			int insertedCount = pstmt.executeUpdate();
			System.out.println("상품이미지추가" + insertedCount);
			return insertedCount;
		}finally {
			JdbcUtil.close(pstmt);
		}
		
	}
}
