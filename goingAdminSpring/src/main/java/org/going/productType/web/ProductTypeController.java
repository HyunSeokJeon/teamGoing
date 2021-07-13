package org.going.productType.web;

import javax.inject.Inject;

import org.going.productType.domain.ProductTypeVO;
import org.going.productType.service.ProductTypeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class ProductTypeController {
	
	@Inject
	private ProductTypeService service;
	
	@RequestMapping(value="/productType", method = RequestMethod.GET)
	public String productTypeList(Model model) throws Exception{
		model.addAttribute("list", service.listAll());
		return "productType/productType";
	}
	
	@RequestMapping(value="/productType", method = RequestMethod.POST)
	public String addProductType(ProductTypeVO productType, RedirectAttributes rttr) throws Exception {
		service.regist(productType);
		
		rttr.addFlashAttribute("msg", "SUCCESS");
		return "redirect:/productType";
		
	}
}
