package org.going.webF;

import javax.inject.Inject;

import org.going.main.service.MainService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

	
	  @Inject MainService mainService;
	 

	@RequestMapping(value="/", method=RequestMethod.GET)
	public String ListAll(Model model) throws Exception{
		model.addAttribute("top3itmes", mainService.getTop3List());
		return "main";
	}
	
	

}
