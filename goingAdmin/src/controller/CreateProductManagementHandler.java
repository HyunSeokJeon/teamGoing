package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ProductType;
import mvc.command.CommandHandler;
import services.product.ProductService;
import services.product.ProductTypeService;

public class CreateProductManagementHandler implements CommandHandler{

	private static final String FORM_VIEW = "/WEB-INF/view/management/product/createProduct.jsp";
	private ProductService ps = new ProductService();
	private ProductTypeService pts = new ProductTypeService();
	//제품생성서비스
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if (req.getMethod().equalsIgnoreCase("get")) {
			return processForm(req, res);
		} else if(req.getMethod().equalsIgnoreCase("post")){
			return processSubmit(req, res);
		} else {
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}
	
	private String processForm(HttpServletRequest req, HttpServletResponse res) throws SQLException {
		List<ProductType> pTypeList = pts.getProductTypeList();
		req.setAttribute("productTypeList", pTypeList);
		
		return FORM_VIEW;
	}
	
	private String processSubmit(HttpServletRequest req, HttpServletResponse res) throws SQLException, IOException {
		ps.createProduct(req);
		return "/WEB-INF/view/management/product/createProduct.jsp";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
