package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jdbc.JdbcUtil;

public class ProductLoveDao {

	public int selectByPidCid(Connection conn, String productId, String id) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String result = null;
		try {
			pstmt = conn.prepareStatement("select loveyn from productlove where productid= ? and customerid = ?");
			pstmt.setString(1, productId);
			pstmt.setString(2, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = rs.getString("loveyn");
			}
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		if(result == null) {
			return 0;
		}else if(result.equals("0")) {
			return 1;
		} else {
			return 2;
		}
	}

	public void insertPLove(Connection conn, String productId, String userId) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("insert into productlove values (?,?,'1')");
			pstmt.setString(1, productId);
			pstmt.setString(2, userId);
			int result = pstmt.executeUpdate();
			if (result == 0) {
				System.out.println("plove insert 문제발생!");
			}
		}finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		
	}

	public void updatePLove(Connection conn, String productId, String userId, String action) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("update productlove set loveyn=? where productid=? and customerid=?");
			pstmt.setString(1, action);
			pstmt.setString(2, productId);
			pstmt.setString(3, userId);
			int result = pstmt.executeUpdate();
			if (result == 0) {
				System.out.println("plove insert 문제발생!");
			}
		}finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
	}

}
