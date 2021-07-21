package org.going.product.service;

import java.util.List;
import java.util.Map;

import org.going.product.domain.ProductVO;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface ProductService {
	
	public void productRegister(MultipartHttpServletRequest Request) throws Exception;
	
	public List<ProductVO> getProductList() throws Exception;
	
	public ProductVO getProductVO(Integer productID) throws Exception;
	
	public void productUpdater(Map<String, String[]> paramMap, Map<String, MultipartFile> imgMap, Map<String, List<MultipartFile>> imgsMap) throws Exception;
}
