package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jdbc.JdbcUtil;
import model.Faq;

public class FaqDao {

	public List<Faq> selectAll(Connection conn)throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("select * from faq");

			rs = pstmt.executeQuery();
			List<Faq> result = new ArrayList<>();
			while(rs.next()) {
				result.add(new Faq(rs.getInt("faqnumber"), rs.getString("faqtitle"), rs.getString("faqcontents")));
			}
			return result;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}

	}
	
}
