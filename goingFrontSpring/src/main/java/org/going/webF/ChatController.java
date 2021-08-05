package org.going.webF;

import javax.servlet.http.HttpSession;

import org.going.customer.domain.CustomerVo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ChatController {
	
	@RequestMapping(value="/chatting", method=RequestMethod.GET)
	public ModelAndView chat(ModelAndView mv, HttpSession session) {
		mv.setViewName("chat/chattingview");
		
		CustomerVo user = (CustomerVo) session.getAttribute("authUser");
		
		mv.addObject("userId", user.getCustomerName());
		
		return mv;
	}
}
