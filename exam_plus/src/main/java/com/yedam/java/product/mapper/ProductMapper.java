package com.yedam.java.product.mapper;

import java.util.List;

import com.yedam.java.product.service.ProductVO;

public interface ProductMapper {
	//상품등록
	//상품번호조회 매퍼
	public ProductVO getProductId();
	//상품이 실제로 등록되는 mapper
	public int insertProduct(ProductVO pVO);
	//전체 상품 조회(리스트 뽑기)
	public List<ProductVO> getProductList();
}
