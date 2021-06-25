package controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Product;
import model.ProductType;
import mvc.command.CommandHandler;
import services.product.ProductService;
import services.product.ProductTypeService;

public class ModifyProductHandler implements CommandHandler {
	
	private ProductService ps = new ProductService();
	private ProductTypeService pts = new ProductTypeService();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if (req.getMethod().equalsIgnoreCase("get")) {
			return processForm(req, res);
		} else if (req.getMethod().equalsIgnoreCase("post")) {
			return processSubmit(req, res);
		} else {
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}

	}

	private String processSubmit(HttpServletRequest req, HttpServletResponse res) throws SQLException {
		ps.modifyProduct(req);
		return "/WEB-INF/view/management/product/productUpdateResult.jsp";
	}

	private String processForm(HttpServletRequest req, HttpServletResponse res) throws SQLException {
		Product result = ps.getOneItem(req, res);
		List<ProductType> pTypeList = pts.getProductTypeList();
		req.setAttribute("productTypeList", pTypeList);
		req.setAttribute("selectedProduct", result);
		return "/WEB-INF/view/management/product/modifyProduct.jsp";
	}

}
