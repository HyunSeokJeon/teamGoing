package org.going.customer.controller;

import java.util.Date;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.going.customer.domain.CustomerVo;
import org.going.customer.domain.LoginDTO;
import org.going.customer.service.CustomerService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.WebUtils;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/customer")
@Log4j
public class CustomerController {
	
	@Inject
	private CustomerService customerService;
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public void loginGET(@ModelAttribute("dto") LoginDTO dto) {
		
	}
	
	@RequestMapping(value = "/loginPost", method = RequestMethod.POST)
		public void loginPOST(LoginDTO dto , HttpSession session, Model model) throws Exception {		
		
		CustomerVo vo = customerService.login(dto);
		
		// vo == null 이면
		// dto 안에 있는 id, pw 값으로 db에서 검색을 했는데,
		// 찾아지지 않았다.
		if(vo == null) {
			log.info("회원이 없습니다.");
			model.addAttribute("loginFail", true);
		}
		
		model.addAttribute("customerVo", vo);
		
		if(dto.isUseCookie()) {
			
			int amount = 60*60*24*7;
			
			Date sessionLimit = new Date(System.currentTimeMillis()+(1000*amount));
			
			customerService.keepLogin(vo.getCustomerId(), session.getId());
		}

	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpServletRequest request,
			HttpServletResponse response, HttpSession session) throws Exception{
		
		Object obj = session.getAttribute("login");
		
		if(obj != null) {
			CustomerVo vo = (CustomerVo) obj;
			session.removeAttribute("login");
			session.invalidate();
			
			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
			
			if(loginCookie != null) {
				loginCookie.setPath("/");
				loginCookie.setMaxAge(0);
				response.addCookie(loginCookie);
				customerService.keepLogin(vo.getCustomerId(), session.getId());
			}			
		}
		
		return "customer/logout";
		
	}
	
}







