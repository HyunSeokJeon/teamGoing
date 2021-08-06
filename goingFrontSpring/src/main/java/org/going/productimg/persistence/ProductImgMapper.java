package org.going.productimg.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.going.productimg.domain.ProductImgVO;

public interface ProductImgMapper {
	
	public List<ProductImgVO> selectById(@Param("pid")Integer productId) throws Exception;
}
