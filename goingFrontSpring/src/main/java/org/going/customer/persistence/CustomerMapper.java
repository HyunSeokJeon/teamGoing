package org.going.customer.persistence;

import org.apache.ibatis.annotations.Param;
import org.going.customer.domain.CustomerDTO;
import org.going.customer.domain.CustomerVo;
import org.going.customer.domain.LoginDTO;

public interface CustomerMapper {


	public CustomerVo login(LoginDTO dto) throws Exception;
	
	public void keepLogin(String customerId, String customerPass) throws Exception;	
	
	public CustomerVo checkUserWithSessionKey(String value);
  
  public String selectOne(@Param("customerId") String customerId) throws Exception;

	public void create(CustomerDTO dto);
	
	public CustomerVO selectById(String customerId) throws Exception;
	
}
