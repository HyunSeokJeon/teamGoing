package org.going.productType.service;

import java.util.List;
import org.going.productType.domain.ProductTypeVO;

public interface ProductTypeService {
	
	public void regist(ProductTypeVO productType) throws Exception;
	
	public ProductTypeVO read(Integer productTypeid) throws Exception;
	
	public List<ProductTypeVO> listAll() throws Exception;
}
