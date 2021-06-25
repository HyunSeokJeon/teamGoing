package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import jdbc.JdbcUtil;
import model.Prolist;

public class ProlistDao {
	public Map<Integer, List<Prolist>> selectByAll(Connection conn,  ArrayList<Integer> ptl) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement("select*from PRODUCT ");
			rs = pstmt.executeQuery();
		
			Map<Integer, List<Prolist>> productListofType= new HashMap<>();
			for(int i = 0; i<ptl.size(); i++) {
				productListofType.put(ptl.get(i), new ArrayList<>());
				
			}
			
			while(rs.next()) {
				productListofType.get(rs.getInt("productTypeID")).add(new Prolist(
						rs.getInt("productID"),
						rs.getInt("productTypeID"),
						rs.getString("productName"),
						rs.getInt("productPrice"),
						rs.getString("productDesc"),
						rs.getInt("productLove"),
						rs.getDate("productSellStart"),
						rs.getDate("productSellEnd"),
						rs.getString("productSellYN"),
						rs.getString("productImage")));
			}
			
			return productListofType;
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	private Date toDate(Timestamp date) {
		return date == null ? null: new Date(date.getTime());
	}
	
	public Prolist selectById(Connection conn, int productID) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Prolist result = null;
		try {
			pstmt = conn.prepareStatement("select * from product where productid = ?");
			pstmt.setInt(1, productID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = new Prolist(
						rs.getInt("productID"),
						rs.getInt("productTypeID"),
						rs.getString("productName"),
						rs.getInt("productPrice"),
						rs.getString("productImage"),
						
						rs.getString("productDesc"),
						rs.getInt("productplaytime"),
						rs.getInt("productageLimit"),
						rs.getInt("productLove"),
						rs.getDate("productSellStart"),
						
						rs.getDate("productSellEnd"),
						rs.getDate("productPeriods"),
						rs.getDate("productPeriode"),
						rs.getDate("productregdate"),
						rs.getString("productSellYN")
						);
			}
		}finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return result;
	}
	public List<Prolist> selectByEndDayWeekLeft(Connection conn) throws SQLException {
		Statement stmt = null;
		ResultSet rs = null;
		List<Prolist> result = new ArrayList<Prolist>();
		try {
			String query = "select productid pid, productname pname, productimage pimage from product where productsellend >= sysdate-1 and productsellend <= sysdate+7";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			while (rs.next()) {
				result.add(new Prolist(rs.getInt("pid"), rs.getString("pname"), rs.getString("pimage")));
			}
			
			return result;
		}finally {
			JdbcUtil.close(stmt);
			JdbcUtil.close(rs);
		}
	}
	public List<Prolist> selectOrderByPLove(Connection conn) throws SQLException {
		Statement stmt = null;
		ResultSet rs = null;
		List<Prolist> result = new ArrayList<Prolist>();
		try {
			String query = "select pid, pname, pimage, plove \r\n"
					+ "from (select productid pid, productname pname, productimage pimage, productlove plove \r\n"
					+ "from product order by plove desc) \r\n"
					+ "where rownum <= 3";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			while (rs.next()) {
				result.add(new Prolist(rs.getInt("pid"), rs.getString("pname"), rs.getString("pimage"), rs.getInt("plove")));
			}
			System.out.println(result.size());
			return result;
		}finally {
			JdbcUtil.close(stmt);
			JdbcUtil.close(rs);
		}
	}
	
}