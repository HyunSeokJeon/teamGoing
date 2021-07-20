package org.going.main.service;

import java.util.List;

import org.going.main.domain.MainVo;
import org.going.main.persistence.MainMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MainServiceImpl implements MainService{
	
	MainMapper mapper;
	
	@Autowired
	public MainServiceImpl(MainMapper mapper) {
		this.mapper=mapper;
	}

	@Override
	public List<MainVo> getTop3List() throws Exception {
		
		return mapper.selectOrderByPLove();
	}

}
