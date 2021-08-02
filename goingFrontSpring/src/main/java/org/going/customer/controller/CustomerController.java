package org.going.customer.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.going.customer.domain.CustomerDTO;
import org.going.customer.domain.PasswordDTO;
import org.going.customer.service.CustomerService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/customer/*")
public class CustomerController {
	
	@Inject
	CustomerService service;
	
	//join
	@RequestMapping(value="/join", method=RequestMethod.GET)
	public void joinGet() {
		
	}
	
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public void joinPost(CustomerDTO dto, Model model)throws Exception{
		if(!dto.getCustomerPass().equals(dto.getCustomerRePass())) {
			model.addAttribute("passError", true);
			return;
		}
		service.join(dto);
		model.addAttribute("success", true);
	}
	
	// 주소록
	@RequestMapping(value="/jusoPopup")
	public String jusoPopup() {
		return "/jusoPopup";
	}
	
	
	//CheckIdAjax 아이디 체크
	@RequestMapping(value="/idCheck", method=RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<Boolean> CheckIdAjax(@RequestParam("customerId") String CustomerId) throws Exception{
		// 서비스에서 id 체크 
		log.info("idCheck ajax");
		boolean result = service.idDuplicationCheck(CustomerId);
		return new ResponseEntity<Boolean>(result, HttpStatus.OK);
	}
	
	
	//login

	// modify
	@RequestMapping(value="modifyPi", method=RequestMethod.GET)
	public void modifyPiGet(HttpServletRequest req, Model model) throws Exception {
		req.getSession().getAttribute("User");
		// TODO 하드코딩 : 로그인 이후 수정
		model.addAttribute("customer", service.getCustomerInfo("sjunhs")); 
	}
	
	// 비밀번호 변경
	@RequestMapping(value="modifyPass", method=RequestMethod.GET)
	public void modifyPassGet() {}
	
	@RequestMapping(value="modifyPass", method=RequestMethod.POST)
	public void modifyPassPost(PasswordDTO dto, HttpServletRequest req) throws Exception{
			
	}
	
}
