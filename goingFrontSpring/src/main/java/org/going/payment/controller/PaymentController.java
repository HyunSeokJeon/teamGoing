package org.going.payment.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.going.customer.domain.CustomerVo;
import org.going.payment.domain.KakaoPayInfoVo;
import org.going.payment.domain.KakaoPayVo;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.http.client.ClientHttpResponse;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.DefaultResponseErrorHandler;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class PaymentController {

	
	KakaoPayVo vo;
	KakaoPayInfoVo kainfo;
	String tid;
	String imagePath;
	
	@RequestMapping(value="/payment", method={RequestMethod.POST, RequestMethod.GET})
	public String UserInfo(HttpServletRequest req, HttpServletResponse res, Model model) throws Exception{
		HttpSession session = req.getSession(false);
		CustomerVo userSes = (CustomerVo)session.getAttribute("authUser");
		System.out.println(userSes.getCustomerId());
		System.out.println(userSes.getCustomerEmail());
		List<String> buyerInfo = new ArrayList<>();
		buyerInfo.add(userSes.getCustomerName());
		buyerInfo.add(userSes.getCustomerEmail());
		
		model.addAttribute("ec", buyerInfo);
		
		return "/payment";
	}
	
	@RequestMapping(value="/kakaoPay", method= {RequestMethod.POST, RequestMethod.GET})
	
	public String kakaoPay(@RequestParam("productName") String productName,
							@RequestParam("productPrice") String productPrice, 
							@RequestParam("productImage") String productImage,
							Model model) throws Exception{
		imagePath = productImage;
		RestTemplate rt1 = new RestTemplate();
		rt1.setRequestFactory(new HttpComponentsClientHttpRequestFactory());
		rt1.setErrorHandler(new DefaultResponseErrorHandler() {
			public boolean hasError(ClientHttpResponse response) throws IOException {
				org.springframework.http.HttpStatus statusCode = response.getStatusCode();
	            return statusCode.series() == org.springframework.http.HttpStatus.Series.SERVER_ERROR;
			}
		});
		HttpHeaders header = new HttpHeaders();
		header.add("Authorization", "KakaoAK " + "80cf82faeddc70eefa9bdb20aa1c31e3");
		header.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		
		MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
		
		params.add("cid", "TC0ONETIME");
		params.add("partner_order_id", "partner_order_id");
		params.add("partner_user_id", "partner_user_id");
		params.add("item_name", productName);
		params.add("quantity", "1");
		params.add("total_amount", productPrice);
		params.add("tax_free_amount", "0");
		params.add("approval_url", "http://localhost:8081/kakaoPayApprove");
		params.add("cancel_url", "http://localhost:8081/kakaoPay");
		params.add("fail_url", "http://localhost:8081/kakaoPay");
		
		HttpEntity<MultiValueMap<String, String>> kakaoPayReady = new HttpEntity<>(params, header);
		
		ResponseEntity<String> response = rt1.exchange("https://kapi.kakao.com/v1/payment/ready", HttpMethod.POST, kakaoPayReady, String.class);
		
		ObjectMapper obj = new ObjectMapper();
		vo = obj.readValue(response.getBody(), KakaoPayVo.class);
		tid = vo.getTid();
		System.out.println(vo.getNext_redirect_pc_url());
		System.out.println(vo.getTid());
		

		model.addAttribute("kakao", vo.getNext_redirect_pc_url());
		return "/kakaoSuccess";
	}
	
	@RequestMapping(value="/kakaoPayApprove", method= {RequestMethod.POST, RequestMethod.GET})
	public String kakaoPaySuccess(String pg_token, Model model) throws Exception{
		//카카오 페이 pg token으로 정보 가져오기
		RestTemplate rt2 = new RestTemplate();
		rt2.setRequestFactory(new HttpComponentsClientHttpRequestFactory());
		rt2.setErrorHandler(new DefaultResponseErrorHandler() {
			public boolean hasError(ClientHttpResponse response) throws IOException {
				org.springframework.http.HttpStatus statusCode = response.getStatusCode();
	            return statusCode.series() == org.springframework.http.HttpStatus.Series.SERVER_ERROR;
			}
		});
		HttpHeaders httpheader = new HttpHeaders();
		httpheader.add("Authorization", "KakaoAK " + "80cf82faeddc70eefa9bdb20aa1c31e3");
		httpheader.add("Accept", MediaType.APPLICATION_JSON_VALUE);
		httpheader.add("Content-type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
		
		MultiValueMap<String, String> info = new LinkedMultiValueMap<>();
		info.add("cid", "TC0ONETIME");
		info.add("tid", vo.getTid());
		info.add("partner_order_id", "partner_order_id");
		info.add("partner_user_id", "partner_user_id");
		info.add("pg_token", pg_token);
		
		HttpEntity<MultiValueMap<String, String>> PayInfo = new HttpEntity<>(info, httpheader);
		ResponseEntity<String> response2 = rt2.exchange("https://kapi.kakao.com/v1/payment/approve", 
				HttpMethod.POST, 
				PayInfo, 
				String.class);
		
		ObjectMapper ob = new ObjectMapper();
		try{
			 kainfo = ob.readValue(response2.getBody(), KakaoPayInfoVo.class);
		}catch(JsonMappingException e) {
			e.printStackTrace();
		}catch(JsonProcessingException e) {
			e.printStackTrace();
		}
		model.addAttribute("kakaoApprove", kainfo);
		model.addAttribute("productImage", imagePath);
		model.addAttribute("Kakao", pg_token);
		return "/payment";
	}
	
	@RequestMapping(value="orderCheck", method= {RequestMethod.POST, RequestMethod.GET})
	public void orderCheck(Model model) throws Exception{
		RestTemplate rt = new RestTemplate();
		HttpHeaders header = new HttpHeaders();
		header.add("Authorization", "KakaoAK " + "80cf82faeddc70eefa9bdb20aa1c31e3");
		header.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		
		MultiValueMap<String, String> info = new LinkedMultiValueMap<>();
		info.add("cid", "TC0ONETIME");
		info.add("tid", tid);
		
		HttpEntity<MultiValueMap<String, String>> check = new HttpEntity<>(info, header);
		ResponseEntity<String> response = rt.exchange("https://kapi.kakao.com/v1/payment/order", HttpMethod.POST, check, String.class);
		
		
		model.addAttribute("check", response);
		
		
	}
}
