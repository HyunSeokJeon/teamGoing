package org.going.product.service;

import java.util.List;

import javax.inject.Inject;

import org.going.product.domain.ProductVo;
import org.going.product.domain.TypeVo;
import org.going.product.persistence.ProductMapper;
import org.springframework.stereotype.Service;

@Service
public class ProductListServiceImpl implements ProductListService{
	
	@Inject
	ProductMapper mapper;

	@Override
	public List<ProductVo> selectAll() throws Exception {
		
		return mapper.selectAll();
	}

	@Override
	public List<ProductVo> selectById(Integer productTypeId) throws Exception {
		return mapper.selectById(productTypeId);
	}

	@Override
	public List<TypeVo> selectPType() throws Exception {
		
		return mapper.selectType();
	}
		


}
