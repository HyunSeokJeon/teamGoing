package org.going.product.service;

import java.util.List;

import javax.inject.Inject;

import org.going.product.domain.ProductVo;
import org.going.product.domain.TypeVo;
import org.going.product.persistence.ProductMapper;
import org.springframework.stereotype.Service;

@Service
public class ProductListServiceImpl implements ProductListService {

	@Inject
	ProductMapper mapper;
	
	@Override
	public List<ProductVo> selectAll() throws Exception {

		return mapper.selectAll();
	}

	@Override
	public List<ProductVo> selectById(Integer productTypeId) throws Exception {
		return mapper.selectById(productTypeId);
	}

	@Override
	public List<TypeVo> selectPType() throws Exception {
		return mapper.selectType();
	}

	@Override
	public ProductVo selectProductId(Integer productID) throws Exception {
		
		return mapper.selectProductId(productID);
	}

	@Override
	public List<ProductVo> selectByLowPrice(int productTypeId) throws Exception {
		
		return mapper.selectByLowPrice(productTypeId);
	}

	@Override
	public void productLove(String productId, String customerid, String action) throws Exception {
		int check = 0;
		
		check = mapper.countProductLove(productId, customerid);
		if (check == 0) {
			mapper.insertPLove(productId,customerid);
			//insert
		} else {
			mapper.updatePLove(productId,customerid,action);
			//update
		}
	}

	@Override
	public boolean isLikeThisItem(Integer productID, String customerId) throws Exception{
		int result = 0;
		if(mapper.countProductLove(productID.toString(), customerId) != 0) {
			result = mapper.selectByProdidCustomid(productID.toString(), customerId);
		}
		if(result == 0) {
			return false;
		}else {
			return true;
		}
	}
}
