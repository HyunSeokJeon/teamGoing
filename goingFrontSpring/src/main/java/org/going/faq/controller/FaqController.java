package org.going.faq.controller;

import javax.inject.Inject;

import org.going.faq.service.FaqService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/faq/*")
public class FaqController {
	
	@Inject
	private FaqService faqService;
	
	//읽기
	@RequestMapping(value="/list", method = RequestMethod.GET)
	public String list(Model model) throws Exception{
		model.addAttribute("list", faqService.list());		
		
		return "/faq/list";
	}
}
