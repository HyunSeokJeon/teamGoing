package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mvc.command.CommandHandler;
import service.MypageInfo;
import service.MypageService;
import service.User;

public class MypageHandler implements CommandHandler{
	
	MypageService ms = new MypageService();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		HttpSession session = req.getSession(false);
		User user = (User) session.getAttribute("authUser");
		String userId = user.getId();
		MypageInfo myinfo = ms.getMypageInfo(userId);
		System.out.println("grade" + myinfo.getGrade());
		System.out.println("couponCount" + myinfo.getCouponCount());
		System.out.println("orderList" + myinfo.getOrderList());
		System.out.println("orderCount" + myinfo.getOrderCount());
		req.setAttribute("mypageInfo", myinfo);
		
		return "/WEB-INF/view/mypage/myPageMain.jsp";
	}

}
