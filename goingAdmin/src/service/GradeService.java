package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import dao.GradeDao;
import jdbc.connection.ConnectionProvider;
import model.GradeMGMT;

public class GradeService {
	
	private GradeDao gradeDao = new GradeDao();
	
	
	public List<GradeMGMT> getGradeList(){
		List<GradeMGMT> gradeList = null;
		try(Connection conn = ConnectionProvider.getConnection()){
			gradeList = gradeDao.selectAll(conn);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return gradeList;
	}


	public void addGrade(HttpServletRequest req) {
		String customerGrade = req.getParameter("inputGrade");
		String inputGradeBenefits = req.getParameter("inputGradeBenefits");
		Double customerBenefits = 0.0;
		if (inputGradeBenefits!=null && !inputGradeBenefits.isEmpty()) {
			customerBenefits = Double.parseDouble(inputGradeBenefits);
		}
		
		try(Connection conn = ConnectionProvider.getConnection()){
			GradeMGMT grade = new GradeMGMT(customerGrade, customerBenefits);
			int result = gradeDao.insertGrade(conn, grade);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
