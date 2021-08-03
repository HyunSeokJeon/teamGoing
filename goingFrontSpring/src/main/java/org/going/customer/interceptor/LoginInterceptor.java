package org.going.customer.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter {

	  private static final String LOGIN = "authUser";

	  @Override
	  public void postHandle(HttpServletRequest request, 
	      HttpServletResponse response, Object handler,
	      ModelAndView modelAndView) throws Exception {

	    HttpSession session = request.getSession();

	    ModelMap modelMap = modelAndView.getModelMap();
	    Object customerVo = modelMap.get("customerVo");

	    if (customerVo != null) {

	      System.out.println("new login success");
	      session.setAttribute(LOGIN, customerVo);

	      if (request.getParameter("useCookie") != null) {

	        Cookie loginCookie = new Cookie("loginCookie", session.getId());
	        loginCookie.setPath("/");
	        loginCookie.setMaxAge(60 * 60 * 24 * 7);
	        response.addCookie(loginCookie);
	      }
	      Object dest = session.getAttribute("dest");

	      response.sendRedirect(dest != null ? (String) dest : "/");
	    }
	  }

	  @Override
	  public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

	    HttpSession session = request.getSession();

	    if (session.getAttribute(LOGIN) != null) {
	      session.removeAttribute(LOGIN);
	    }

	    return true;
	  }
	}

