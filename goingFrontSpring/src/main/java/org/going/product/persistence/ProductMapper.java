package org.going.product.persistence;

import java.util.List;

import org.going.product.domain.ProductVo;

public interface ProductMapper {

			 List<ProductVo> selectAll() throws Exception;
	
			 List<ProductVo> selectById(Integer productTypeId) throws Exception;
		
}
