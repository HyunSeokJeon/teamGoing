package org.going.productimg.service;

import java.util.List;

import org.going.productimg.domain.ProductImgVO;

public interface ProductImgService {
	public List<ProductImgVO> getImageList(Integer productId) throws Exception;
}
