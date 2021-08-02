package org.going.customer.service;

import java.sql.Date;

import javax.inject.Inject;

import org.going.customer.domain.CustomerDTO;
import org.going.customer.domain.CustomerVO;
import org.going.customer.persistence.CustomerMapper;
import org.going.grade.domain.GrademgmtVO;
import org.going.grade.persistence.GradeMapper;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class CustomerServiceImpl implements CustomerService {

	@Inject
	CustomerMapper mapper;
	
	@Inject
	GradeMapper gradeMapper;
	
	@Override
	public boolean idDuplicationCheck(String customerId) throws Exception {
		log.info("idDuplicationCheck");
		String id = mapper.selectOne(customerId);
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
		
		mapper.create(dto);
	}

	@Override
	public CustomerVO getCustomerInfo(String customerId) throws Exception {
		return mapper.selectById(customerId);
	}
	
	

}
