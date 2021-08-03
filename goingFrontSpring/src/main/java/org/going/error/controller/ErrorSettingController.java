package org.going.error.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ErrorSettingController {
	
	@RequestMapping(value="/error404")
	public String error404() {
		return "/error/error404";
	}
}
