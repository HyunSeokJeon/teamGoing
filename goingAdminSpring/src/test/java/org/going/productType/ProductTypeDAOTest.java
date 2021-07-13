package org.going.productType;

import static org.junit.Assert.assertThat;

import javax.inject.Inject;

import org.going.productType.domain.ProductTypeVO;
import org.going.productType.persistence.ProductTypeDao;
import org.junit.Test;
import org.junit.jupiter.api.Assertions;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
		locations= {"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class ProductTypeDAOTest {
	
	@Inject
	private ProductTypeDao dao;
	
	ProductTypeVO vo;
	
	private static Logger logger = LoggerFactory.getLogger(ProductTypeDAOTest.class);
	
	@Test
	public void testListAll() throws Exception{
		
		logger.info(dao.listAll().toString());
	}
	
	@Test
	@Transactional
	@Rollback(true)
	public void testCreate() throws Exception{
		int before = dao.listAll().size();
		vo = new ProductTypeVO();
		vo.setProductType("테스트타입");
		dao.create(vo);
		int after = dao.listAll().size();
		Assertions.assertEquals(1, after - before);
		logger.info(dao.listAll().toString());
	}
}
