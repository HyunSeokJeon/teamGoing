package org.going.product.service;

import java.util.List;

import org.going.product.domain.ProductVO;

public interface ProductService {
	
	public void productRegister(ProductVO vo, String[] imgsName) throws Exception;
	
	public List<ProductVO> getProductList() throws Exception;
}
