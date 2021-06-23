package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;
import service.ProlistService;

public class ProductLoveHandler implements CommandHandler{

	private ProlistService ps = new ProlistService();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String productId = req.getParameter("pId");
		String userId = req.getParameter("customerid");
		String action = req.getParameter("action");
		ps.insertOrUpdatePLove(productId, userId, action);
		return null;
	}
	
}
