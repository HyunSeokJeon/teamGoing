package org.going.productType.service;

import java.util.List;

import javax.inject.Inject;

import org.going.productType.domain.ProductTypeVO;
import org.going.productType.persistence.ProductTypeDao;
import org.springframework.stereotype.Service;

@Service
public class ProductTypeServiceImpl implements ProductTypeService{
	
	@Inject
	private ProductTypeDao dao;

	@Override
	public void regist(ProductTypeVO productType) throws Exception {
		dao.create(productType);
	}

	@Override
	public ProductTypeVO read(Integer productTypeid) throws Exception {
		return dao.read(productTypeid);
	}

	@Override
	public List<ProductTypeVO> listAll() throws Exception {
		return dao.listAll();
	}
	
	
	
	
	
}
