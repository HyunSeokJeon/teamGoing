package org.going.webF;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.going.main.service.MainService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

	
	  @Inject MainService mainService;
	 

	@RequestMapping(value="/", method= {RequestMethod.GET,RequestMethod.POST})
	public String ListAll(Model model, HttpServletRequest request) throws Exception{
		model.addAttribute("top3itmes", mainService.getTop3List());
		return "main";
	}
	
	

}
