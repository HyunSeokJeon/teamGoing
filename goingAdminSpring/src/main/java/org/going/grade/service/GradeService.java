package org.going.grade.service;

import java.util.List;

import org.going.grade.domain.GradeDTO;
import org.going.grade.domain.GradeVO;

public interface GradeService {

	public List<GradeVO> getGradeList() throws Exception;

	public void addGrade(GradeDTO dto) throws Exception;
	

}
