package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jdbc.JdbcUtil;
import model.GradeMGMT;

public class GradeDao {
	public List<GradeMGMT> selectAll(Connection conn) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<GradeMGMT> result = new ArrayList<GradeMGMT>();
		try{
			pstmt = conn.prepareStatement("select * from grademgmt");
			rs = pstmt.executeQuery();
			while (rs.next()) {
				result.add(new GradeMGMT(rs.getString("customerGrade"), rs.getDouble("customerBenefits")));
			}
		}finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		
		return result;
	}

	public int insertGrade(Connection conn, GradeMGMT grade) throws SQLException {
		PreparedStatement pstmt = null;
		int result = 0;
		try {
			pstmt = conn.prepareStatement("insert into grademgmt values (?,?)");
			pstmt.setString(1, grade.getCustomerGrade());
			pstmt.setDouble(2, grade.getCustomerBenefits());
			result = pstmt.executeUpdate();
		}finally {
			JdbcUtil.close(pstmt);
		}
		
		return result;
	}
}
