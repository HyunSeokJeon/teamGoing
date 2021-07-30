package org.going.login.service;

import org.going.login.domain.OAuthToken;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Service
public class KaKaoLoginService{
	
	
	public String kakao(String code) throws Exception{
		RestTemplate rt = new RestTemplate();
		//http 헤더 생성
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type","application/x-www-form-urlencoded;charset=utf-8");
		System.out.println("코드"+code);
		//http body 생성
		MultiValueMap<String, String> params = new LinkedMultiValueMap<>();
		params.add("grant_type", "authorization_code");
		params.add("client_id", "7a9d7646f024ea13e76abbd9ff73055f");
		params.add("redirect_uri", "http://localhost:8081/kakaologin");
		params.add("code", code);
		
		//http header와 body 하나의 오브젝트에 담기
		HttpEntity<MultiValueMap<String, String>> kakaoToken = new HttpEntity<>(params, headers);
		
		//http 특정 url로 요청하기
		ResponseEntity<String> response = rt.exchange("https://kauth.kakao.com/oauth/token",
				HttpMethod.POST, 
				kakaoToken, 
				String.class);
		System.out.println("성공");
		System.out.println("토큰"+response);
		//json to java object
		
		
		  ObjectMapper obj = new ObjectMapper(); 
		  OAuthToken kato = null; 
		  try{ 
			  kato = obj.readValue(response.getBody(), OAuthToken.class);
		  }catch(JsonMappingException e) { 
			  e.printStackTrace(); }
	
	return kato.getAccess_token();
}
}
