package org.going.search.service;

import java.util.List;

import org.going.main.domain.MainVo;
import org.going.search.persistence.SearchMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class SearchServiceImpl implements SearchService{

	private final SearchMapper mapper;
	
	
	@Autowired
	public SearchServiceImpl(SearchMapper mapper) {
			this.mapper=mapper;
	}


	@Override
	public List<MainVo> searchPro(String keyword) throws Exception {
		return mapper.Search(keyword);
	}
	
	


}
