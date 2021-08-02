package org.going.customer.service;

import org.going.customer.domain.CustomerDTO;
import org.going.customer.domain.CustomerVO;

public interface CustomerService {

	public boolean idDuplicationCheck(String customerId) throws Exception;

	public void join(CustomerDTO dto) throws Exception;
	
	public CustomerVO getCustomerInfo(String customerId) throws Exception;
	
}
