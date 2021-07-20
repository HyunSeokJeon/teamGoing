package org.going.search.controller;

import java.util.List;

import org.going.main.domain.MainVo;
import org.going.search.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SearchController {
	
	
	private final SearchService searchService;
	@Autowired
	public SearchController(SearchService searchService) {
		this.searchService = searchService;
	}
	
	@RequestMapping(value="/search", method=RequestMethod.POST)
	public String SearchKey(@RequestParam("keyword")String keyword, Model model) throws Exception{
				System.out.println(keyword);
		List<MainVo> sepo = searchService.searchPro(keyword);
		model.addAttribute("Keyword", sepo);
		return "/prolistSearch";
	}
	
}
