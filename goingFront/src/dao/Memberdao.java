package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

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

	public static String getGrade(Connection conn, String userId) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String grade = null;
		try {
			pstmt = conn.prepareStatement("select customergrade from customer where customerid = ?");
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				grade = rs.getString(1);
			}
		}finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return grade;
	}

	public Set<String> selectCustomerIdByAll(Connection conn) throws SQLException {
		Statement stmt = null;
		ResultSet rs = null;
		Set<String> result = new HashSet<String>();
		try {
			stmt = conn.createStatement();
			String query = "select customerid from customer";
			rs = stmt.executeQuery(query);
			
			while(rs.next()) {
				result.add(rs.getString("customerid"));
			}
			return result;
		}finally {
			JdbcUtil.close(stmt);
			JdbcUtil.close(rs);
		}
	}
	
	
	
	
	
	
}
