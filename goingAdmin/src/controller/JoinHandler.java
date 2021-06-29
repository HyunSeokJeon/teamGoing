package controller;

import java.sql.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.DuplicateIdException; 

import service.JoinRequest;
import service.JoinService;
import mvc.command.CommandHandler;

public class JoinHandler implements CommandHandler {

	private static final String FORM_VIEW = "/WEB-INF/view/join/join.jsp";
	private JoinService joinService = new JoinService();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) {
		if (req.getMethod().equalsIgnoreCase("GET")) {
			return processForm(req, res);
		} else if (req.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(req, res);
		} else {
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}

	private String processForm(HttpServletRequest req, HttpServletResponse res) {
		return FORM_VIEW;
	}

	private String processSubmit(HttpServletRequest req, HttpServletResponse res) {
		JoinRequest joinReq = new JoinRequest();
		joinReq.setId(req.getParameter("id"));
		joinReq.setPassword(req.getParameter("password"));
		joinReq.setRepassword(req.getParameter("repassword"));
		joinReq.setName(req.getParameter("name"));

		int Birthday1 = Integer.parseInt(req.getParameter("birthday1")) ;
		int Birthday2 = Integer.parseInt(req.getParameter("birthday2")) ;
		int Birthday3 = Integer.parseInt(req.getParameter("birthday3")) ;
		
		Date birthday = new Date(Birthday1, Birthday2, Birthday3);
		
		joinReq.setBirthday(birthday);
		joinReq.setGender(req.getParameter("gender"));
		
		String email = req.getParameter("email1")+"@"+req.getParameter("email2");
		
		joinReq.setEmail(email);
		
		joinReq.setPhonenum(req.getParameter("phonenum"));
		joinReq.setAddresscod1(req.getParameter("addresscod1"));
		joinReq.setAddress1(req.getParameter("address1"));
		
		joinReq.setAddress2(req.getParameter("address2"));
		joinReq.setRecommender(req.getParameter("recommender"));
		
		
		Map<String, Boolean> errors = new HashMap<>();
		req.setAttribute("errors", errors);
		
		joinReq.validate(errors);
		
		if (!errors.isEmpty()) {
			return FORM_VIEW;
		}
		
		
		
		
		try {
			joinService.joinlogic(joinReq);
			return "/view/join/joinSuccess.jsp";
		} catch (DuplicateIdException e) {
			errors.put("duplicateId", Boolean.TRUE);
			return FORM_VIEW;
		}
	}

}
