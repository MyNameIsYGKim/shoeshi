package co.sam.shoeshi.product.mapper;

import java.util.List;

import co.sam.shoeshi.product.service.ProductVO;

public interface ProductMapper {
	List<ProductVO>	productSelectList();
	List<ProductVO>	productSelectList(String key, String val);
	
	List<ProductVO>	productSearchList(String key, String val);
	ProductVO productSelect(ProductVO vo);
	int productInsert(ProductVO vo);
	int productUpdate(ProductVO vo);
	int productDelete(ProductVO vo);
}
