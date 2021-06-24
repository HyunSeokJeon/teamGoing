package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import jdbc.JdbcUtil;
import model.Faq;
import model.Product;

public class FaqDao {

	public List<Faq> selectAll(Connection conn) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("select * from faq");

			rs = pstmt.executeQuery();
			List<Faq> result = new ArrayList<>();
			while (rs.next()) {
				result.add(convertFaq(rs));
			}
			return result;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}

	public int selectcount(Connection conn) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("select count (*) as count from faq");
			rs = pstmt.executeQuery();
			int selectcount = 0;
			if (rs.next()) {
				selectcount = rs.getInt("count");
			}
			return selectcount;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}

	private Faq convertFaq(ResultSet rs) throws SQLException {
		return new Faq(rs.getInt("FAQNUMBER"), rs.getString("FAQTITLE"), rs.getString("FAQCONTENTS"));
	}

	public void insert(Connection conn, String faqtitle, String faqcontents) throws SQLException {
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement("insert into faq values(faqnumseq.nextval, ? , ?)");
			pstmt.setString(1, faqtitle);
			pstmt.setString(2, faqcontents);
			pstmt.executeUpdate();
		} finally {
			JdbcUtil.close(pstmt);
		}
	}

	//select문에서 faqid(faqnumber) 값 하나로 나머지 다 가져오는 메소드 만들기
		public Faq getSelectById(Connection conn, int faqnumber) throws SQLException{
			PreparedStatement pstmt = null;
			ResultSet rs=null;
			Faq result = null;
			try {
				pstmt = conn.prepareStatement("select * from faq where faqnumber=?");
				pstmt.setInt(1, faqnumber);
				rs = pstmt.executeQuery();
				if (rs.next()) {
					result = convertFaq(rs);
				}			
				return result;
			}finally {
				pstmt.close();
				rs.close();
			}		
		}	

		//post할때 사용, where faqtitle 을 키 값으로 받아주기 √ , int update?
		public int update(Connection conn, String faqnumber, String faqtitle, String faqcontents) throws SQLException {
			try (PreparedStatement pstmt =conn.prepareStatement("update faq set faqtitle=?, faqcontents=? where faqnumber=?")) {
				pstmt.setString(1, faqtitle);
				pstmt.setString(2, faqcontents);
				pstmt.setString(3, faqnumber);
				int result = pstmt.executeUpdate();
				return result;
			}
		}

}


