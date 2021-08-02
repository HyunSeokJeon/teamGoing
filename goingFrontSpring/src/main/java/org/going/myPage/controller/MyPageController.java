package org.going.myPage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/myPage/*")
@Log4j
public class MyPageController {
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String myPageMain(Model model) {
		//회원 정보 db에서 가져와 model에 담기
		// 등급
		// 쿠폰
		// 문의내역
		// 개인정보
		return "/myPage/myPageMain";
	}
	
	
}
