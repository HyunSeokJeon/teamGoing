package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;
import services.coupon.CouponService;

public class ReadCouponManagementHandler implements CommandHandler{
	
	CouponService couponService = new CouponService();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setAttribute("couponList", couponService.getCouponList());
		
		return "/WEB-INF/view/management/coupon/couponMGMT.jsp";
	}
	
	

}
