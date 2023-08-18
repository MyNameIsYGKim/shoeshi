package co.sam.shoeshi.product.service;

import java.util.HashMap;
import java.util.List;

public interface ProductService {
	List<ProductVO>	productSelectList();
	List<HashMap<String, Object>>productJoinSelect();
	ProductVO productSelect(ProductVO vo);
	int productInsert(ProductVO vo);
	int productUpdate(ProductVO vo);
	int productDelete(ProductVO vo);
}
