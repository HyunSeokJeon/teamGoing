package org.going.product.service;

import java.util.List;

import javax.inject.Inject;

import org.going.product.domain.ProductVO;
import org.going.product.persistence.ProductMapper;
import org.going.productImg.domain.ProductImgVO;
import org.going.productImg.persistence.ProductImgMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ProductServiceImpl implements ProductService{
	
	@Inject
	ProductMapper mapper;
	
	@Inject
	ProductImgMapper imgMapper;

	@Override
	@Transactional
	public void productRegister(ProductVO vo, String[] imgsName) throws Exception {
		mapper.create(vo);
		int lastId = mapper.selectLastValue();
		
		ProductImgVO imgvo = new ProductImgVO();
		imgvo.setProductID(lastId);
		for (int i = 0; i < imgsName.length ;i++) {
			imgvo.setPImg(imgsName[i]);
			imgMapper.insert(imgvo);
		}
		
	}

	@Override
	public List<ProductVO> getProductList() throws Exception {
		return mapper.listAll();
	}

	
}
