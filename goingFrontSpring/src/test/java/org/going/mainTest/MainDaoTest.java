package org.going.mainTest;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.going.main.persistence.MainMapper;
import org.junit.Test;
import org.junit.jupiter.api.Assertions;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations ={"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
//@MapperScan("org.going.main.persistence")
public class MainDaoTest {

	@Inject
	MainMapper dao;

	Logger log = Logger.getLogger(MainDaoTest.class);

	@Test
	public void selectAll() throws Exception{
		log.info(dao.selectAll().toString());
		Assertions.assertEquals(dao.selectAll().size(), 5);
	
	}
	
	@Test
	public void selectOrderByPLove() throws Exception{
		log.info(dao.selectOrderByPLove().toString());
	}
	
	/*
	 * @Test public void selectByEndDayWeekLeft() throws Exception{
	 * log.info(dao.selectByEndDayWeekLeft().toString()); }
	 */

}
