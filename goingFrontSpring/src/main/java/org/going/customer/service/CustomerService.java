package org.going.customer.service;


import org.going.customer.domain.CustomerVo;
import org.going.customer.domain.LoginDTO;
import org.going.customer.domain.CustomerDTO;


public interface CustomerService {

	public CustomerVo login(LoginDTO dto) throws Exception;
	
	public void keepLogin(String customerId, String sessionId) throws Exception;
	
	public CustomerVo checkLoginBefore(String value);
	
  
	public boolean idDuplicationCheck(String customerId) throws Exception;

	public void join(CustomerDTO dto) throws Exception;
	
	public CustomerVo getCustomerInfo(String customerId) throws Exception;
	
	public void changePassword(LoginDTO dto) throws Exception;
	
	public void modifyCustomerInfo(CustomerDTO dto) throws Exception;

}
