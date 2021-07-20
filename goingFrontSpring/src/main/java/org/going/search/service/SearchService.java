package org.going.search.service;

import java.util.List;

import org.going.main.domain.MainVo;

public interface SearchService {
	
	List<MainVo> searchPro(String keyword) throws Exception;

}
