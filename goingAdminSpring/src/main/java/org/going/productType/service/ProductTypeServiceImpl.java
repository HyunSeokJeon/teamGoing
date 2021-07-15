package org.going.productType.service;

import java.util.List;

import javax.inject.Inject;

import org.going.productType.domain.ProductTypeVO;
import org.going.productType.persistence.ProductTypeMapper;
import org.springframework.stereotype.Service;

@Service
public class ProductTypeServiceImpl implements ProductTypeService{
	
	@Inject
	private ProductTypeMapper mapper;

	@Override
	public void regist(ProductTypeVO productType) throws Exception {
		mapper.create(productType);
	}

	@Override
	public ProductTypeVO read(Integer productTypeid) throws Exception {
		return mapper.read(productTypeid);
	}

	@Override
	public List<ProductTypeVO> listAll() throws Exception {
		return mapper.listAll();
	}
	
	
	
	
	
}
