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

	@Override
	public void write(FaqVO faqVO) throws Exception {
		faqMapper.write(faqVO);
		
	}

	@Override
	public void update(FaqVO faqVO) throws Exception {
		faqMapper.update(faqVO);
	}

	@Override
	public void delete(int faqNumber) throws Exception {
		faqMapper.delete(faqNumber);
	}

	@Override
	public FaqVO read(int faqNumber) throws Exception {
		return faqMapper.read(faqNumber);
	}
	
}
