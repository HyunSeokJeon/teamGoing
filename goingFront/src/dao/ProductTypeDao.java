package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
}
