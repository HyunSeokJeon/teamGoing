package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;
import services.product.ProductService;

public class ReadProductManagementHandler implements CommandHandler{
	
	ProductService productService = new ProductService();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setAttribute("productList", productService.getProductList());
		
		return "/WEB-INF/view/management/product/productMGMT.jsp";
	}
	
	

}
