package org.going.productimg.service;

import java.util.List;

import javax.inject.Inject;

import org.going.productimg.domain.ProductImgVO;
import org.going.productimg.persistence.ProductImgMapper;
import org.springframework.stereotype.Service;

@Service
public class ProductImgServiceImpl implements ProductImgService{

	
	@Inject
	ProductImgMapper mapper;
	
	@Override
	public List<ProductImgVO> getImageList(Integer productId) throws Exception{
		return mapper.selectById(productId);
	}

}
