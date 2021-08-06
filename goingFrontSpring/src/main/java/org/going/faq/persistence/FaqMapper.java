package org.going.faq.persistence;

import java.util.List;

import org.going.faq.domain.FaqVO;

public interface FaqMapper {
	public List<FaqVO> list() throws Exception;
}
