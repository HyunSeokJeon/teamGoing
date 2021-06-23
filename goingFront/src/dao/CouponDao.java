package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;

import jdbc.JdbcUtil;
import model.Coupon;

public class CouponDao {
	
	public Coupon selectAll(Connection conn, int couponID, String couponName, String couponDesc, float couponDiscount, Date couponVaild) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt= conn.prepareStatement("select * from COUPON");
			rs = pstmt.executeQuery();
			Coupon coupon = null;
			if(rs.next()) {
				coupon = new Coupon(
										rs.getInt("couponID"),
										rs.getString("couponName"),
										rs.getString("couponDesc"),
										rs.getFloat("couponDiscount"),
										toDate(rs.getTimestamp("couponVaild")));
			}
			return coupon;
		}finally{
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	
	private Date toDate(Timestamp date) {
		return date == null ? null : new Date(date.getTime());
	}
	
	public void select(Connection conn, Coupon coupon)throws SQLException{
		try(PreparedStatement pstmt = conn.prepareStatement("select*from coupon")){
			pstmt.executeUpdate();
		}
	}
	
	public Coupon selectById(Connection conn, int couponID) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement("select * from coupon where COUPONID = ?");
			pstmt.setInt(1, couponID);
			rs = pstmt.executeQuery();
			
			Coupon cp = null;
			if(rs.next()) {
				cp = new Coupon(rs.getInt("COUPONID"),
													rs.getString("COUPONNAME"), 
													rs.getString("COUPONDESC"), 
													rs.getFloat("COUPONDISCOUNT"),
													toDate(rs.getTimestamp("COUPONVAILD")));
			}
			return cp;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	
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
