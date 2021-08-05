package org.going.faq.service;

import java.util.List;

import org.going.faq.domain.FaqVO;

public interface FaqService {
	public List<FaqVO> list() throws Exception;
}
