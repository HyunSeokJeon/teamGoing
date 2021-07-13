package org.going.productType.persistence;

import java.util.List;

import org.going.productType.domain.ProductTypeVO;

public interface ProductTypeDao {
	public void create(ProductTypeVO vo) throws Exception;
	
	public ProductTypeVO read(Integer id) throws Exception;
	
	public List<ProductTypeVO> listAll() throws Exception;
}
