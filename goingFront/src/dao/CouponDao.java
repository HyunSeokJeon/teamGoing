package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CouponDao {
	public int getAvailableCoupon(Connection conn, String customerId) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		pstmt = conn.prepareStatement("select count(couponid) from couponissue where customerid=? and couponusage='0'");
		pstmt.setString(1, customerId);
		rs = pstmt.executeQuery();
		int result = 0;
		
		if (rs.next()) {
			result = rs.getInt(1);
		}
		return result;
	}
}
