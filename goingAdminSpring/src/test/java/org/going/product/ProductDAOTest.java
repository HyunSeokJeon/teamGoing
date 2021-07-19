package org.going.product;

import java.sql.Date;

import javax.inject.Inject;

import org.going.product.domain.ProductVO;
import org.going.product.persistence.ProductMapper;
import org.going.productType.domain.ProductTypeVO;
import org.junit.Test;
import org.junit.jupiter.api.Assertions;
import org.junit.runner.RunWith;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
@Log4j
public class ProductDAOTest {

	@Inject
	private ProductMapper mapper;

	ProductVO vo;
	ProductTypeVO typeVO;

//	@Test
	@Transactional
	@Rollback(true)
	public void testCreate() throws Exception {
		log.info("------------testListCreate----------------");
		vo = new ProductVO();
		typeVO = new ProductTypeVO();
		typeVO.setProductTypeId(20);
		vo.setProductName("테스트상품");
		vo.setProductPrice(1);
		vo.setProductImage("/테스트");
		vo.setProductDesc("/테스트2");
		vo.setProductPlaytime(0);
		vo.setProductAgeLimit(0);
		vo.setProductLove(0);
		vo.setProductSellStart(new Date(2021, 2, 11));
		vo.setProductSellEnd(new Date(2021, 2, 11));
		vo.setProductPeriods(new Date(2021, 2, 11));
		vo.setProductPeriode(new Date(2021, 2, 11));
		vo.setProductRegdate(new Date(2021, 2, 11));
		vo.setProductSellYN("0");
		mapper.create(vo);

	}

	@Test
	public void testRead() throws Exception {
		log.info("------------testRead----------------");
		log.info(mapper.read(20).toString());

	}

	@Test
	public void testListAll() throws Exception {
		log.info("------------testListAll----------------");
		log.info(mapper.listAll().toString());
	}

	@Test
	@Transactional
	@Rollback(true)
	public void testUpdate() throws Exception {
		log.info("------------testUpdate----------------");
		vo = mapper.read(20);
		log.info("vo productprice : " + vo.getProductPrice()); // 변경 전

		vo.setProductPrice(10000);
		log.info("vo productprice : " + vo.getProductPrice()); // 변경 후
		mapper.update(vo); // 업데이트 실행
		ProductVO vo2 = mapper.read(20);
		log.info("vo2 productprice : " + vo2.getProductPrice());// db에서 같은 값 가져옴
		Assertions.assertEquals(true, vo.getProductPrice() == vo2.getProductPrice());

	}
}
