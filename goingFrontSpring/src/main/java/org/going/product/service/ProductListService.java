package org.going.product.service;

import java.util.List;

import org.going.product.domain.ProductVo;
import org.going.product.domain.TypeVo;

public interface ProductListService {
		
	List<ProductVo>selectAll() throws Exception;
	
	List<ProductVo>selectById(Integer productTypeId) throws Exception;
	
	List<TypeVo> selectPType()throws Exception;
	
}