package co.sam.shoeshi.product.service;

import java.util.HashMap;
import java.util.List;

public interface ProductService {
	List<ProductVO>	productSelectList();
		
	List<HashMap<String, Object>>productJoinSelectList();
	List<HashMap<String, Object>>productJoinSearchList(String val);
	List<HashMap<String, Object>>newProductList();
	HashMap<String, Object>productJoinSelect(ProductVO vo);
	ProductVO productSelect(ProductVO vo);
	int productInsert(ProductVO vo);
	int productUpdate(ProductVO vo);
	int productDelete(ProductVO vo);
	List<ProductVO> productSelectList(String key, String val);
	List<ProductVO> productSearchList(String key, String val);
}
