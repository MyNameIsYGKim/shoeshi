package co.sam.shoeshi.productService;

import java.util.List;

public interface ProductService {
	List<ProductVO> productSelectList();
	ProductVO productSelect(ProductVO vo);
	int productInsert(ProductVO vo);
	int productUpdate(ProductVO vo);
	int productDelete(ProductVO vo);
}
