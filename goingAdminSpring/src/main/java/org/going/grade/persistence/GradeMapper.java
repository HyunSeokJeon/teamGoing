package org.going.grade.persistence;

import java.util.List;

import org.going.grade.domain.GradeVO;

public interface GradeMapper {
	
	public List<GradeVO> listAll() throws Exception;
	
	public void insert(GradeVO vo) throws Exception;
}
