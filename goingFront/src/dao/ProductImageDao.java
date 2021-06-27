package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jdbc.JdbcUtil;
import model.ProductImg;

public class ProductImageDao {

	public List<ProductImg> getImageList(Connection conn, String productId) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<ProductImg> result = new ArrayList<ProductImg>();
		try {
			pstmt = conn.prepareStatement("select * from productimg where productid =?");
			pstmt.setString(1, productId);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				result.add(new ProductImg(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDate(4)));
			}
		}finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return result;
	}

}
