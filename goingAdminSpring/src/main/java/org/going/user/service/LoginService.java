package org.going.user.service;

import org.going.user.domain.LoginDTO;
import org.going.user.domain.UserVO;

public interface LoginService {
	
	public UserVO loginProcess(LoginDTO dto) throws Exception;
	
}
