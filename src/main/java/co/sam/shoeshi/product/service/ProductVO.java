package co.sam.shoeshi.product.service;


import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProductVO {
	private String productId;
	private String productMaker;
	private String productName;
	private int productPrice;
	private int productSize;
}
