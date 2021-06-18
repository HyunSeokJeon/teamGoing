package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import jdbc.JdbcUtil;

public class ProductTypeDao {
			
	public ArrayList<Integer> selectByTypeId(Connection conn) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Integer> productListofType = new ArrayList<Integer>();
		try {
			pstmt = conn.prepareStatement("select productTypeID  from productType");
			
			//count로 배열 사이즈 정하기
			//상품 타입 ID만 긁어와서 배열에 넣어, Int배열 리턴하고 Service에서 배열 값을 Key값에 넣기 
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
	
	
}
