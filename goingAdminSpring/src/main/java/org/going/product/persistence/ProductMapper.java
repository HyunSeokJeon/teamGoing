package org.going.product.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.going.product.domain.ProductCriteria;
import org.going.product.domain.ProductSearchCriteria;
import org.going.product.domain.ProductVO;

public interface ProductMapper {

	public void create(ProductVO vo) throws Exception;

	public ProductVO read(Integer productID) throws Exception;

	public void update(@Param("product")ProductVO vo, @Param("imgCheck") Map<String, Boolean> imgCheck) throws Exception;

	public List<ProductVO> listAll() throws Exception;
	
	public int selectLastValue() throws Exception;
//	
//	public List<ProductVO> listPage(int page) throws Exception;
//	
//	public List<ProductVO> listCriteria(ProductCriteria pcri) throws Exception;
//	
//	public int countPaging(ProductCriteria pcri)throws Exception;
//	
//	//use for dynamic sql
//	
//	public List<ProductVO> listSearch(ProductSearchCriteria pscri) throws Exception;
//	
//	public int listSearchCount(ProductSearchCriteria pscri) throws Exception;

}
