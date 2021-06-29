package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Faq;
import mvc.command.CommandHandler;
import service.faqService;

public class FaqHandler implements CommandHandler{
	faqService faqService = new faqService();
		
		public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
			req.setAttribute("faqList", faqService.getFaqList() );
			
			
		return "/WEB-INF/view/customerService/faq.jsp";
		}
	
}
