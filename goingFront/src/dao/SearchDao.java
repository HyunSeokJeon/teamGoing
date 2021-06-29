package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Prolist;

public class SearchDao {
		public List<Prolist>Search(Connection conn, String Keyword) throws SQLException{
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			try {
				pstmt = conn.prepareStatement("select * from product where productName" + " like ? ");
				
				pstmt.setString(1, "%"+Keyword+"%");
				rs = pstmt.executeQuery();
				List<Prolist> search = new ArrayList<Prolist>();
				
				while(rs.next()) {
					search.add(new Prolist(
							rs.getInt("productID"),
							rs.getInt("productTypeID"),
							rs.getString("productName"),
							rs.getInt("productPrice"),
							rs.getString("productDesc"),
							rs.getInt("productLove"),
							rs.getDate("productSellStart"),
							rs.getDate("productSellEnd"),
							rs.getString("productSellYN"),
							rs.getString("productImage")
							
							));
				}
				return search;
			}finally {
				
			}
		}
}
