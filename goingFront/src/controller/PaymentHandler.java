package controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Customer;
import mvc.command.CommandHandler;
import service.PaymentService;
import service.User;

public class PaymentHandler implements CommandHandler {

	private PaymentService paymentService = new PaymentService();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		List<Customer> pms = new ArrayList<>();	
		Customer ec = paymentService.paymentInfo();
		String user = ec.getCUSTOMERID();
		
			HttpSession session = req.getSession(false);
			User use = (User)session.getAttribute("authUser");
			if(user.equals(use.getId())){
				req.setAttribute("ec", ec);
			}
			
		return "/WEB-INF/view/payment.jsp";
	}
	
}

