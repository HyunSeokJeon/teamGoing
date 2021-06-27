package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.lang.Integer;

import jdbc.JdbcUtil;
import model.Coupon;

public class CouponDao {

	public List<Coupon> selectAll(Connection conn) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("select * from coupon order by couponID");

			rs = pstmt.executeQuery();
			List<Coupon> result = new ArrayList<>();
			while (rs.next()) {
				result.add(convertCoupon(rs));
			}
			return result;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}

	}

	public int createCoupon(Connection conn, Coupon c) throws SQLException {
		PreparedStatement pstmt = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			pstmt=conn.prepareStatement("insert into coupon"
					+ "(couponid, couponname, coupondesc, coupondiscount, couponvaild)"
					+ "values "
					+ "(COUPONIDSEQ.nextval, ?, ?, ?, ?)");
			pstmt.setString(1, c.getCouponName());
			pstmt.setString(2, c.getCouponDesc());
			pstmt.setDouble(3, c.getCouponDiscount());
			pstmt.setDate(4, c.getCouponVaild());
		
			pstmt.executeUpdate();
			
			stmt = conn.createStatement();
			String query = "select last_value(couponID) over() from coupon";
			rs = stmt.executeQuery(query);
			int lastCouponid = 0;
			if (rs.next()) {
				lastCouponid = rs.getInt(1);
			}
			return lastCouponid;
		}finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
			JdbcUtil.close(stmt);
		}
	}

	private Coupon convertCoupon(ResultSet rs) throws SQLException {
		return new Coupon(
				rs.getInt("couponID"),
				rs.getString("couponName"),
				rs.getString("couponDesc"),
				rs.getDouble("couponDiscount"),
				rs.getDate("couponVaild")
				
				);
	}

	public Coupon getSelectById(Connection conn, int couponId) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = conn.prepareStatement("select * from coupon where couponid = ?");
			pstmt.setInt(1, couponId);
			rs = pstmt.executeQuery();
			Coupon result = null;
			if (rs.next()) {
				result = convertCoupon(rs);
			}
			return result;
			
		}finally {			
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			
			
/*			pstmt.close();
			rs.close();
*/
		}
		
	}
}
