package com.yedam.java.product.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yedam.java.product.service.ProductService;
import com.yedam.java.product.service.ProductVO;

@Controller
public class ProductController {
	@Autowired
	ProductService service;
	
	//상품 등록 페이지 이동
	@GetMapping("/insertProduct")
	public String insertProduct(ProductVO pVO, Model model) {
		model.addAttribute("pId", service.getProductId().getProductId());
		return "product/insertProduct";
	}
	//상품 등록 처리
	@RequestMapping(value ="/insertProduct", method = RequestMethod.POST)
	public String insertForm(ProductVO pVO) {
		return "redirect:productList";
	}

}
