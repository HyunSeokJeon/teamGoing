package org.going.customer.persistence;

import org.apache.ibatis.annotations.Param;
import org.going.customer.domain.CustomerDTO;
import org.going.customer.domain.CustomerVO;

public interface CustomerMapper {

	public String selectOne(@Param("customerId") String customerId) throws Exception;

	public void create(CustomerDTO dto);
	
	public CustomerVO selectById(String customerId) throws Exception;

}
