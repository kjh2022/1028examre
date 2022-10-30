package com.yedam.java.product.service;

import java.util.List;

public interface ProductService {
	//상품등록
	//상품번호조회 매퍼
	public ProductVO getProductId();
	//상품이 실제로 등록되는 mapper
	public int insertProduct(ProductVO pVO);	
	
	//상품 리스트 출력(조회)
	public List<ProductVO> getProductList();
}
