package com.yedam.java.product.service;

import java.util.Date;

import lombok.Data;
@Data
public class ProductVO {
	private int productId;
	private String productName;
	private int productPrice;
	private String productInfo;
	private Date productDate;
	private String company;
	private String managerId;
}
