package org.going.main.Service;

import java.util.List;

import javax.inject.Inject;

import org.going.main.domain.MainVo;
import org.going.main.persistence.MainMapper;
import org.springframework.stereotype.Service;

@Service
public class MainServiceImpl implements MainService{

		@Inject
		MainMapper mapper;

		@Override
		public List<MainVo> getTop3List() throws Exception {
			
			return mapper.selectOrderByPLove();
		}
	
		
		
}
