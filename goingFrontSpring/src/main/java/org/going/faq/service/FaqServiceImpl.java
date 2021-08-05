package org.going.faq.service;

import java.util.List;

import javax.inject.Inject;

import org.going.faq.domain.FaqVO;
import org.going.faq.persistence.FaqMapper;
import org.springframework.stereotype.Service;

@Service
public class FaqServiceImpl implements FaqService{

	@Inject
	private FaqMapper faqMapper;
	
	@Override
	public List<FaqVO> list() throws Exception{
		return faqMapper.list();
	}
}
