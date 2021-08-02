package org.going.customer.service;

import javax.inject.Inject;

import org.going.customer.domain.CustomerVo;
import org.going.customer.domain.LoginDTO;
import org.going.customer.persistence.CustomerMapper;
import org.springframework.stereotype.Service;

@Service
public class CustomerServiceImpl implements CustomerService {
	
	@Inject
	private CustomerMapper customerMapper;
	

	@Override
	public CustomerVo login(LoginDTO dto) throws Exception {
		return customerMapper.login(dto);
	}

	@Override
	public void keepLogin(String customerId, String sessionId) throws Exception {
		customerMapper.keepLogin(customerId, sessionId);
		
	}

	@Override
	public CustomerVo checkLoginBefore(String value) {
		// TODO Auto-generated method stub
		return customerMapper.checkUserWithSessionKey(value);
	}

}
