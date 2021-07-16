package org.going.product.controller;

import java.util.List;

import javax.inject.Inject;

import org.going.product.domain.ProductVo;
import org.going.product.service.ProductListService;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@Controller

public class ProductController {
		
	
	@Inject
	ProductListService productListService;
	
	@RequestMapping(value="/prolist", method=RequestMethod.GET)
	public String ListAll(Model model) throws Exception {
		model.addAttribute("productListofType", productListService.selectAll());
		
		return "/prolist";
	}
	
	@RequestMapping(value="/prolist/{productTypeId}", method=RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<List<ProductVo>> selectById(@PathVariable("productTypeId") Integer productTypeId) throws Exception{
		System.out.println("productTypeId="+productTypeId);
		
		List<ProductVo> list = productListService.selectById(productTypeId);
		System.out.println("List="+ list);
		return  ResponseEntity.ok(list);
		
	}
	
}
