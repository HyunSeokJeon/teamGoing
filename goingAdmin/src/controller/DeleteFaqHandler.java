package controller;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.FaqDao;
import jdbc.connection.ConnectionProvider;
import model.Faq;
import mvc.command.CommandHandler;

public class DeleteFaqHandler implements CommandHandler{
	
	private FaqDao faqDao = new FaqDao();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
			int faqnumber = Integer.parseInt(req.getParameter("faqid")); 
			
			Connection conn = ConnectionProvider.getConnection();
			int result = faqDao.delete(conn, faqnumber);
			return "/WEB-INF/view/customerservice/deleteSuccess.jsp";
	}
}
