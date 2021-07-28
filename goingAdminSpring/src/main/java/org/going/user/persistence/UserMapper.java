package org.going.user.persistence;

import org.going.user.domain.CustomerVO;
import org.going.user.domain.LoginDTO;
import org.going.user.domain.UserVO;

public interface UserMapper {
	public UserVO lRead(LoginDTO dto) throws Exception;
	
	public CustomerVO listAll() throws Exception;
	
}
