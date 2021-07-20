package org.going.product.service;

import java.util.List;

import org.going.product.domain.ProductVo;

public interface ProductListService {
		
	List<ProductVo>selectAll() throws Exception;
	
	List<ProductVo>selectById(Integer productTypeId) throws Exception;
}
