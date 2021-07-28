package org.going.user.web;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.going.user.domain.LoginDTO;
import org.going.user.domain.UserVO;
import org.going.user.service.LoginService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/user/*")
@Log4j
public class LoginController {

	@Inject
	LoginService loginservice;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void loginGet(Model model, HttpServletRequest req) {
		Cookie[] cookies = req.getCookies();
		if(cookies != null) {
			for(Cookie c : cookies) {
				if(c != null && c.getName().equals("rememberId")) {
					model.addAttribute("rememberId", c.getValue());
				}
			}
		}
		
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginPost(LoginDTO dto, Model model, HttpServletRequest req, HttpServletResponse res) throws Exception {
		UserVO vo = loginservice.loginProcess(dto);
		System.out.println(dto.toString());
		if (vo == null) {
			log.info("login fail");
			model.addAttribute("login", false);
			return "/user/login";
		}
		HttpSession session = req.getSession();
		if(vo != null) {
			log.info("login accepted");
			session.setAttribute("managerLogin", vo);
			if(req.getParameter("rememberId") != null) {
				log.info("rememberId use cookie");
				Cookie idCookie = new Cookie("rememberId", vo.getCustomerId());
				idCookie.setPath("/");
				idCookie.setMaxAge( 60 * 60 * 24 * 7);
				res.addCookie(idCookie);
			}
		}
		res.sendRedirect("/");
		return null;
	}
	
	@RequestMapping(value = "/logout", method= RequestMethod.GET)
	public void logoutGet(HttpSession session, HttpServletResponse res) throws Exception {
		if(session != null) {
			log.warn("logout!! session invalidate");
			session.invalidate();
			res.sendRedirect("/");
		}
	}
}
