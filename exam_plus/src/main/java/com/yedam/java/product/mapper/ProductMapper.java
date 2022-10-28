package com.yedam.java.product.mapper;

import com.yedam.java.product.service.ProductVO;

public interface ProductMapper {
	//상품등록
	//상품번호조회 매퍼
	public ProductVO getProductId();
	//상품이 실제로 등록되는 mapper
	public int insertProduct(ProductVO pVO);
}
