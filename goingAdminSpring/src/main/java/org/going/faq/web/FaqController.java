package org.going.faq.web;

import javax.inject.Inject;

import org.going.faq.domain.FaqVO;
import org.going.faq.service.FaqService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/faq/*")
public class FaqController {

	private static final Logger logger = LoggerFactory.getLogger(FaqController.class);
	@Inject
	private FaqService faqService;

	//등록
	@RequestMapping(value="/writefaq", method= RequestMethod.GET)
	public void writeFaq() throws Exception{
		logger.info("writeFaq");
	}
	
	@RequestMapping(value="/writefaq", method=RequestMethod.POST)
	public String wirte(FaqVO faqVO) throws Exception{
		logger.info("write");
		
		faqService.write(faqVO);
		
		return "redirect:/faq/list";
		
	}
	
	//읽기
	@RequestMapping(value="/list", method = RequestMethod.GET)
	public String list(Model model) throws Exception{
		logger.info("list");
		model.addAttribute("list", faqService.list());		
		
		return "/faq/list";
	}

	//수정
	@RequestMapping(value="/updateFaq", method=RequestMethod.GET)
	public String updateFaq(FaqVO faqVO, Model model) throws Exception{
		logger.info("updateView");
		System.out.println(faqVO.getFaqNumber());
		model.addAttribute("updateFaq", faqService.read(faqVO.getFaqNumber()));
		return "/faq/updateFaq";
	}
	
	@RequestMapping(value="/updateFaq", method=RequestMethod.POST)
	public String update(FaqVO faqVO) throws Exception{
		logger.info("update");		
		faqService.update(faqVO);		
		return "redirect:/faq/list";
	}
	

	
	//삭제
	@RequestMapping(value="/delete", method=RequestMethod.GET)
	public String delete(@RequestParam("faqNumber") int faqNumber) throws Exception{
		logger.info("delete");
		faqService.delete(faqNumber);
		return "redirect:/faq/list";		
	}
	
	
	
	
	
}










