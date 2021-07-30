package org.going.login.controller;

import java.io.IOException;

import org.going.login.domain.KaKaoProfile;
import org.going.login.service.KaKaoLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.http.client.ClientHttpResponse;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.DefaultResponseErrorHandler;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class KaKaoLoginController {
	
	@Autowired
	KaKaoLoginService kakaoService;

	@RequestMapping(value = "/kakaologin", method = RequestMethod.GET)
	@ResponseBody
	public String kakaoinfo(String code, Model model) throws Exception {
		String AccessToken = kakaoService.kakao(code);
		
		RestTemplate rt2 = new RestTemplate();
		rt2.setRequestFactory(new HttpComponentsClientHttpRequestFactory());
		rt2.setErrorHandler(new DefaultResponseErrorHandler() {
			public boolean hasError(ClientHttpResponse response) throws IOException {
				org.springframework.http.HttpStatus statusCode = response.getStatusCode();
	            return statusCode.series() == org.springframework.http.HttpStatus.Series.SERVER_ERROR;
			}
		});
		  HttpHeaders header = new HttpHeaders(); 
		  header.add("Authorization", "Bearer " + AccessToken);
		  header.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		  
		  HttpEntity<MultiValueMap<String, String>> kakaoInfo = new HttpEntity<>(header);
		  
		  ResponseEntity<String> response2 = rt2.exchange("https://kapi.kakao.com/v2/user/me", HttpMethod.POST, kakaoInfo, String.class);
		  System.out.println(response2.getBody());
		  ObjectMapper ojb = new ObjectMapper();
		  KaKaoProfile kaPro = null;
		  try {
			  kaPro = ojb.readValue(response2.getBody(), KaKaoProfile.class);
		  }catch(JsonMappingException e) {
			  e.printStackTrace();
		  }catch(JsonProcessingException e) {
			  e.printStackTrace();
		  }
		  
		  System.out.println("카톡아이디"+kaPro.getId());
		  System.out.println(kaPro.getKakao_account().getProfile().getNickname());
		  System.out.println("카톡이메일"+kaPro.kakao_account.getEmail());
		  
		  
		 
		 
		 return response2.getBody();
		
	}
}
