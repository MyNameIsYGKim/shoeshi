package co.sam.shoeshi.productimg.service;

import co.sam.shoeshi.product.service.ProductVO;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProductimgVO extends ProductVO{
	private int productId;
	private String productimgPath;
	private String productimgName1;
	private String productimgName2;
	private String productimgName3;
}
