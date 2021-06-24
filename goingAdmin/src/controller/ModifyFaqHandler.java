package controller;

import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.FaqDao;
import jdbc.connection.ConnectionProvider;
import model.Faq;
import mvc.command.CommandHandler;

public class ModifyFaqHandler implements CommandHandler{
	private static final String FORM_VIEW = "/WEB-INF/view/customerservice/modifyFaq.jsp";

//	private FaqService fs = new FaqService();
	private FaqDao faqDao = new FaqDao();
	
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
	
	public String processForm (HttpServletRequest req, HttpServletResponse res) throws SQLException{
		int faqnumber = Integer.parseInt(req.getParameter("faqid")); 
		Connection conn = ConnectionProvider.getConnection();
		Faq faqreq = faqDao.getSelectById(conn, faqnumber);
		req.setAttribute("selecedFaq", faqreq);
		return FORM_VIEW;
	}
	
	public String processSubmit (HttpServletRequest req, HttpServletResponse res) throws SQLException{
		String faqnumber = req.getParameter("modifyFAQ_NUM");
		String faqtitle = req.getParameter("modifyFAQ_Q");
		String faqcontents = req.getParameter("modifyFAQ_A");		
		Connection conn = ConnectionProvider.getConnection();
		int result = faqDao.update(conn, faqnumber, faqtitle, faqcontents);
		
		return "/WEB-INF/view/customerservice/modifySuccess.jsp";
	}

	

}