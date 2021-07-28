package org.going.product.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.going.product.domain.ProductVo;
import org.going.product.domain.TypeVo;

public interface ProductMapper {

			 List<ProductVo> selectAll() throws Exception;
	
			 List<ProductVo> selectById(Integer productTypeId) throws Exception;
			 
			 List<TypeVo> selectType() throws Exception;
			 
			 ProductVo selectProductId(Integer productID) throws Exception;
			 
			 List<ProductVo> selectByLowPrice(@Param("productTypeId")int productTypeId) throws Exception;
		
}
