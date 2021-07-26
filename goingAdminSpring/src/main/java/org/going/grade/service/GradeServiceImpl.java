package org.going.grade.service;

import java.util.List;

import javax.inject.Inject;

import org.going.grade.domain.GradeDTO;
import org.going.grade.domain.GradeVO;
import org.going.grade.persistence.GradeMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

@Service
public class GradeServiceImpl implements GradeService {
	
	@Inject
	GradeMapper mapper;
	
	@Override
	@Transactional(isolation = Isolation.READ_COMMITTED)
	public List<GradeVO> getGradeList() throws Exception{
		return mapper.listAll();
	}

	@Override
	public void addGrade(GradeDTO dto) throws Exception{
		GradeVO vo = new GradeVO();
		vo.setCustomerGrade(dto.getGrade());
		vo.setCustomerBenefits(Double.parseDouble(dto.getBenefits()));
		mapper.insert(vo);
	}

}
