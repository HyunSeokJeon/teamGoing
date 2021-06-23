package controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Prolist;
import mvc.command.CommandHandler;
import service.ProlistService;
import service.User;

public class ProductInfoHandler implements CommandHandler{

	private ProlistService ps = new ProlistService();
	
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

	private String processSubmit(HttpServletRequest req, HttpServletResponse res) throws SQLException {
		
		return null;
	}

	private String processForm(HttpServletRequest req, HttpServletResponse res) throws SQLException {
		String productId = req.getParameter("pId"/* 상품정보 파라미터 이름*/);
		boolean likeThisItem = false;
		if(req.getSession().getAttribute("authUser") != null) {
			User user = (User)req.getSession().getAttribute("authUser");
			likeThisItem = ps.isLikeThisItem(productId, user.getId());
		}
		Prolist product = ps.getProduct(productId);
		req.setAttribute("likeYN", likeThisItem);
		req.setAttribute("product", product);
		return "/WEB-INF/view/product/productDes.jsp";
	}
	
}
