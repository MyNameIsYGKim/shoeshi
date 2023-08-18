package co.sam.shoeshi.product.service;

import java.util.List;

public interface ProductService {
	List<ProductVO>	productSelectList();
	List<ProductVO>	productSelectList(String key, String val);
	
	List<ProductVO>	productSearchList(String key, String val);
	ProductVO productSelect(ProductVO vo);
	int productInsert(ProductVO vo);
	int productUpdate(ProductVO vo);
	int productDelete(ProductVO vo);
}
