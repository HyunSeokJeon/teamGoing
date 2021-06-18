package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.GradeMGMT;
import mvc.command.CommandHandler;
import service.GradeService;

public class GradeHandler implements CommandHandler{

	GradeService gradeService = new GradeService();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if (req.getMethod().equalsIgnoreCase("GET")) {
			return processForm(req, res);
		} else if (req.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(req, res);
		} else {
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}
	
	private String processForm(HttpServletRequest req, HttpServletResponse res) {
		List<GradeMGMT> gradeList = gradeService.getGradeList();
		req.setAttribute("gradeList", gradeList);
		return "/WEB-INF/view/management/grade/gradeMGMT.jsp";
	}
	
	private String processSubmit(HttpServletRequest req, HttpServletResponse res) {
		gradeService.addGrade(req);
		return "/WEB-INF/view/management/grade/gradeDMLResult.jsp";
	}
}
