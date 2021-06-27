package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import mvc.command.CommandHandler;
import services.coupon.CouponService;


public class CreateCouponManagementHandler implements CommandHandler{

	private static final String FORM_VIEW = "/WEB-INF/view/management/coupon/createCoupon.jsp";
	private CouponService cs = new CouponService();

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
		return FORM_VIEW;
	}
	
	private String processSubmit(HttpServletRequest req, HttpServletResponse res) throws SQLException, IOException {
		cs.createCoupon(req);
		return "/WEB-INF/view/management/coupon/couponDMLResult.jsp";
	}
	
	

	
	
	
	
	
	
	
	
}
