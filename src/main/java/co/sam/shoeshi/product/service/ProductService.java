package co.sam.shoeshi.product.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface ProductService {
	List<ProductVO>	productSelectList();
	List<ProductVO>	productSelectList(String key, String val);
	
	List<HashMap<String, Object>>productJoinSelectList();
	List<HashMap<String, Object>>productJoinSearchList(String val);
	HashMap<String, Object>productJoinSelect(ProductVO vo);
	ProductVO productSelect(ProductVO vo);
	int productInsert(ProductVO vo);
	int productUpdate(ProductVO vo);
	int productDelete(ProductVO vo);
}
