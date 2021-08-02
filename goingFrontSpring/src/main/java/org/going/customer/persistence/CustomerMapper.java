package org.going.customer.persistence;

import org.going.customer.domain.CustomerVo;
import org.going.customer.domain.LoginDTO;

public interface CustomerMapper {


	public CustomerVo login(LoginDTO dto) throws Exception;
	
	public void keepLogin(String customerId, String customerPass) throws Exception;	
	
	public CustomerVo checkUserWithSessionKey(String value);
	
}