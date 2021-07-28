package org.going.user.service;

import javax.inject.Inject;

import org.going.user.domain.LoginDTO;
import org.going.user.domain.UserVO;
import org.going.user.persistence.UserMapper;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService{

	@Inject
	UserMapper mapper;
	
	@Override
	public UserVO loginProcess(LoginDTO dto) throws Exception {
		return mapper.lRead(dto);
	}

}
