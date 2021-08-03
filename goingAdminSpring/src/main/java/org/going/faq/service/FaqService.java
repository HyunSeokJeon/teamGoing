package org.going.faq.service;

import java.util.List;

import org.going.faq.domain.FaqVO;

public interface FaqService {
	
	//조회
	public List<FaqVO> list() throws Exception;
	
	public FaqVO read(int faqNumber) throws Exception;
	
	//등록
	public void write(FaqVO faqVO) throws Exception;
	
	//수정
	public void update(FaqVO faqVO) throws Exception;
	
	//삭제
	public void delete(int faqNumber) throws Exception;
	
}
