package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;

import jdbc.JdbcUtil;
import model.Customer;

public class Memberdao {
		
	public Customer selectById(Connection conn, String CUSTOMERID) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(
					"select * from customer where customerid = ?");
			pstmt.setString(1, CUSTOMERID);
			rs = pstmt.executeQuery();
			Customer member = null;
			if (rs.next()) {
				member = new Customer(
						rs.getString("CUSTOMERID"), 
						rs.getString("CUSTOMERPASS"),
						rs.getString("CUSTOMERNAME"), 
						rs.getDate("CUSTOMERBIRTHDAY"), 
						rs.getString("CUSTOMERGENDER"),
						
						rs.getString("CUSTOMEREMAIL"), 
						rs.getString("CUSTOMERPHONENUM"), 
						rs.getString("CUSTOMERADDRESSCODE1"), 
						rs.getString("CUSTOMERADDRESS1"), 
						rs.getString("CUSTOMERADDRESS2"),
						
						rs.getString("CUSTOMERACCOUNT"), 
						rs.getString("RECOMMENDER"), 
						rs.getString("CUSTOMERGRADE"), 
						rs.getString("CUSTOMERCOUPLE"), 
						rs.getInt("CUSTOMERBALANCE"));
			}
			return member;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}

	private Date toDate(Timestamp date) {
		return date == null ? null : new Date(date.getTime());
	}

	public void insert(Connection conn, Customer mem) throws SQLException {
		try (PreparedStatement pstmt = 
				conn.prepareStatement("insert into customer values(?,?,?,?,?, ?,?,?,?,?, ?,?,?,?,?)")) {
			pstmt.setString(1, mem.getCUSTOMERID());
			pstmt.setString(2, mem.getCUSTOMERPASS());
			pstmt.setString(3, mem.getCUSTOMERNAME());
			pstmt.setDate(4, mem.getCUSTOMERBIRTHDAY());
			pstmt.setString(5, mem.getCUSTOMERGENDER());
			pstmt.setString(6, mem.getCUSTOMEREMAIL());
			pstmt.setString(7, mem.getCUSTOMERPHONENUM());
			pstmt.setString(8, mem.getCUSTOMERADDRESSCODE1());
			pstmt.setString(9, mem.getCUSTOMERADDRESS1());
			pstmt.setString(10, mem.getCUSTOMERADDRESS2());
			pstmt.setString(11, mem.getCUSTOMERACCOUNT());
			pstmt.setString(12, mem.getRECOMMENDER());
			pstmt.setString(13, mem.getCUSTOMERGRADE());
			pstmt.setString(14, mem.getCUSTOMERCOUPLE());
			pstmt.setInt(15, mem.getCUSTOMERBALANCE());
			pstmt.executeUpdate();
		}
	}

	public void update(Connection conn, Customer member) throws SQLException {
		try (PreparedStatement pstmt = conn.prepareStatement(
				"update customer set customername = ?, customerpass = ? where customerid = ?")) {
			pstmt.setString(1, member.getCUSTOMERNAME());
			pstmt.setString(2, member.getCUSTOMERPASS());
			pstmt.setString(3, member.getCUSTOMERID());
			pstmt.executeUpdate();
		}
	}
	
	
	
	
	
	
}
