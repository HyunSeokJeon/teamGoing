package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import jdbc.JdbcUtil;
import model.Prolist;

public class ProductTypeDao {
			
	public ArrayList<Integer> selectByTypeId(Connection conn) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Integer> productListofType = new ArrayList<Integer>();
		try {
			pstmt = conn.prepareStatement("select productTypeID  from productType");
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				productListofType.add(rs.getInt("productTypeID")); 
			}
			return productListofType;
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	
	public ArrayList<Prolist>selectLowPrice(Connection conn) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Prolist> productListofType = new ArrayList<Prolist>();
		try {
			pstmt = conn.prepareStatement("select * from product order by productprice asc");
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				productListofType.add(new Prolist(
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
		}
	}
	
	public ArrayList<Prolist>selectHighPrice(Connection conn) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Prolist> productListofType = new ArrayList<Prolist>();
		try {
			pstmt = conn.prepareStatement("select * from product order by productprice desc");
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				productListofType.add(new Prolist(
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
			
		}
	}
	
	public String selectProductTypeById(Connection conn, int productTypeId) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String result = null;
		try {
			pstmt = conn.prepareStatement("select producttype from producttype where producttypeid = ?");
			pstmt.setInt(1, productTypeId);
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = rs.getString("producttype");
			}
			
		}finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return result;
	}
	
}
