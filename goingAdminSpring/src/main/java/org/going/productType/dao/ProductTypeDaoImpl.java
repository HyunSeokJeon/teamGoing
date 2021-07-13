package org.going.productType.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.going.productType.domain.ProductTypeVO;
import org.springframework.stereotype.Repository;

@Repository
public class ProductTypeDaoImpl implements ProductTypeDao {
	@Inject
	private SqlSession session;
	
	private final String NAMESPACE = "org.going.mapper.productTypeMapper";

	@Override
	public void create(ProductTypeVO vo) throws Exception {
		session.insert(NAMESPACE + ".create", vo);
	}

	@Override
	public ProductTypeVO read(Integer id) throws Exception {
		return session.selectOne(NAMESPACE + ".read", id);
	}

	@Override
	public List<ProductTypeVO> listAll() throws Exception {
		return session.selectList(NAMESPACE + ".listAll");
	}

}
