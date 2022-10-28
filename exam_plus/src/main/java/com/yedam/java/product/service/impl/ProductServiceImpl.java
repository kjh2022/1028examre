package com.yedam.java.product.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.java.product.mapper.ProductMapper;
import com.yedam.java.product.service.ProductService;
import com.yedam.java.product.service.ProductVO;
@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	ProductMapper mapper;
	
	@Override
	public ProductVO getProductId() {
		return mapper.getProductId();
	}

	@Override
	public int insertProduct(ProductVO pVO) {
		return mapper.insertProduct(pVO);
	}

}
