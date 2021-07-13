package org.going.productType.web;

import javax.inject.Inject;

import org.going.productType.service.ProductTypeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProductTypeController {
	
	@Inject
	private ProductTypeService service;
	
	@RequestMapping(value="/productType", method = RequestMethod.GET)
	public String productTypeList(Model model) throws Exception{
		model.addAttribute("list", service.listAll());
		return "productType/productTypeMGMT";
	}
}
