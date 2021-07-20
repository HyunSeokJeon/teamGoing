package org.going.main.service;

import java.util.List;

import org.going.main.domain.MainVo;

public interface MainService {
		
	public List<MainVo>getTop3List() throws Exception;
}
