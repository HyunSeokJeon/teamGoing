package org.going.productImg.persistence;

import java.util.List;

import org.going.productImg.domain.ProductImgVO;

public interface ProductImgMapper {
	
	public void insert(ProductImgVO pimg) throws Exception;
	
	public List<ProductImgVO> listAll(Integer productID) throws Exception;
	
	public void deleteAllById(Integer productID) throws Exception;
}
