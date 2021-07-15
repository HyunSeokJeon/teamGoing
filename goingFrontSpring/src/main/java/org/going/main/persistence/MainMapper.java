package org.going.main.persistence;

import java.util.List;

import org.going.main.domain.MainVo;
public interface MainMapper {
		
	/* MainVo selectById(MainVo productid); */
	
	public List<MainVo> selectAll() throws Exception;
	
		
	
	public List<MainVo> selectOrderByPLove() throws Exception;
	
	/* public List<MainVo> selectByEndDayWeekLeft() throws Exception; */
	
	
}
