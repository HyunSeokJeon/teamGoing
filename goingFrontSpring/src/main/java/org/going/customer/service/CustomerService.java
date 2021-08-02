package org.going.customer.service;

import org.going.customer.domain.CustomerVo;
import org.going.customer.domain.LoginDTO;

public interface CustomerService {

	public CustomerVo login(LoginDTO dto) throws Exception;
	
	public void keepLogin(String customerId, String sessionId) throws Exception;
	
	public CustomerVo checkLoginBefore(String value);
	

}
