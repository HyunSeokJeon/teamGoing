package org.going.main.persistence;

import java.util.List;

import org.going.main.domain.MainVo;
public interface MainMapper {
		
	public List<MainVo> selectAll() throws Exception;
	
		
	
	public List<MainVo> selectOrderByPLove() throws Exception;
	
	
	
	
}
