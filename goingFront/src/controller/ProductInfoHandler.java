package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Prolist;
import mvc.command.CommandHandler;
import service.ProlistService;

public class ProductInfoHandler implements CommandHandler{

	private ProlistService ps = new ProlistService();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String productId = req.getParameter("pId"/* 상품정보 파라미터 이름*/);
		Prolist product = ps.getProduct(productId);
		req.setAttribute("product", product);
		return "/WEB-INF/view/product/productDes.jsp";
	}
	
}
