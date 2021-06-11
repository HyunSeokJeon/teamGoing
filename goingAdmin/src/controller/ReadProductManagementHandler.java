package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;
import services.product.ListProductService;

public class ReadProductManagementHandler implements CommandHandler{
	
	ListProductService readProductService = new ListProductService();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setAttribute("productList", readProductService.productList());
		
		return "/WEB-INF/view/management/product/productMGMT.jsp";
	}
	
	

}
