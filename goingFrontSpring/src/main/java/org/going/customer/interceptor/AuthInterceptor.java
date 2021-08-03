package org.going.customer.interceptor;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.going.customer.domain.CustomerVo;
import org.going.customer.service.CustomerService;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.WebUtils;

public class AuthInterceptor extends HandlerInterceptorAdapter {


	@Inject
	private CustomerService customerService;
	
	private final String LOGIN="authUser";

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		HttpSession session = request.getSession();

		if (session.getAttribute(LOGIN) == null) {


			saveDest(request);

			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");

			if (loginCookie != null) {

				CustomerVo customerVo= customerService.checkLoginBefore(loginCookie.getValue());


				if (customerVo != null) {
					session.setAttribute(LOGIN, customerVo);
					return true;
				}

			}

			response.sendRedirect("/customer/login");
			return false;
		}
		return true;
	}

	private void saveDest(HttpServletRequest req) {

		String uri = req.getRequestURI();

		String query = req.getQueryString();

		if (query == null || query.equals("null")) {
			query = "";
		} else {
			query = "?" + query;
		}

		if (req.getMethod().equals("GET")) {
			req.getSession().setAttribute("dest", uri + query);
		}
	}

}


