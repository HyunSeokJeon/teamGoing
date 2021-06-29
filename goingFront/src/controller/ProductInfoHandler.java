package controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductImageDao;
import jdbc.connection.ConnectionProvider;
import model.ProductImg;
import model.Prolist;
import mvc.command.CommandHandler;
import service.ProlistService;
import service.User;

public class ProductInfoHandler implements CommandHandler{

	private ProlistService ps = new ProlistService();
	private ProductImageDao pid = new ProductImageDao();
	
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
		List<ProductImg> pImgList = pid.getImageList(ConnectionProvider.getConnection(), productId);
		req.setAttribute("likeYN", likeThisItem);
		req.setAttribute("product", product);
		req.setAttribute("imgList", pImgList);
		return "/WEB-INF/view/product/productDes.jsp";
	}
	
}
