package org.going.customer.service;

import java.sql.Date;

import javax.inject.Inject;

import org.going.customer.domain.CustomerDTO;
import org.going.customer.domain.CustomerVo;
import org.going.customer.domain.LoginDTO;
import org.going.grade.domain.GrademgmtVO;
import org.going.grade.persistence.GradeMapper;
import org.going.customer.persistence.CustomerMapper;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class CustomerServiceImpl implements CustomerService {
	
	@Inject
	private CustomerMapper customerMapper;
	
	@Inject
	GradeMapper gradeMapper;
	
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
  
  @Override
	public boolean idDuplicationCheck(String customerId) throws Exception {
		log.info("idDuplicationCheck");
		String id = customerMapper.selectOne(customerId);
		if(id == null) {
			log.info("No duplication!");
			return true;
		}else {
			log.info("duplication!");
			return false;
		}
	}

	@Override
	public void join(CustomerDTO dto) throws Exception {
		Date birthday = Date.valueOf(dto.getBirthday1() + "-" + dto.getBirthday2() + "-" + dto.getBirthday3());
		dto.setCustomerBirthday(birthday);
		dto.setCustomerEmail(dto.getEmail1()+"@"+dto.getEmail2());
		GrademgmtVO gradeVo = gradeMapper.selectBasic();
		if(gradeVo == null) {
			gradeMapper.createBasic();
		}
		
		customerMapper.create(dto);
	}

	@Override
	public CustomerVo getCustomerInfo(String customerId) throws Exception {
		return customerMapper.selectById(customerId);
	}

}
