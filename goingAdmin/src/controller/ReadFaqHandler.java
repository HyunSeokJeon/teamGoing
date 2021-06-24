package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;
import service.FaqService;

public class ReadFaqHandler implements CommandHandler{

	FaqService faqService = new FaqService();

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setAttribute("faqList", faqService.getFaqList());	
		
		return "/WEB-INF/view/customerservice/faqMGMT.jsp";
	}
	
	
	
}
