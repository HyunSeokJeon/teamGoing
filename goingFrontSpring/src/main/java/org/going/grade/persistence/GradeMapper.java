package org.going.grade.persistence;

import org.going.grade.domain.GrademgmtVO;

public interface GradeMapper {
	public GrademgmtVO selectBasic() throws Exception;
	
	public void createBasic() throws Exception;
}
