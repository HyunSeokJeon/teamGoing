package controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ProductType;
import mvc.command.CommandHandler;
import services.product.ProductTypeService;

public class ReadAndWriteProductTypeHandler implements CommandHandler{
	
	private ProductTypeService pTypeService = new ProductTypeService();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if (req.getMethod().equalsIgnoreCase("get")) {
			return processView(req, res);
		} else if(req.getMethod().equalsIgnoreCase("post")){
			return processSubmit(req, res);
		} else {
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}
	
	private String processView(HttpServletRequest req, HttpServletResponse res){
		List<ProductType> pTypeList = null;
		try {
			pTypeList = pTypeService.getProductTypeList();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		req.setAttribute("productTypeList", pTypeList);
		return "/WEB-INF/view/management/product/productTypeMGMT.jsp";
	}

	private String processSubmit(HttpServletRequest req, HttpServletResponse res){
		String productType = req.getParameter("inputpType");
		if(productType != null) {
			try {
				pTypeService.insertItem(productType);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} else {
			// 파라미터 에러처리
		}
		return "/WEB-INF/view/management/product/productTypeDMLResult.jsp";
	}
}
