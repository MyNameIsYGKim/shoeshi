package co.sam.shoeshi.productimg.service;

import java.util.List;

public interface ProductimgService {
	List<ProductimgVO> productimgSelectList();
	ProductimgVO productimgSelect(ProductimgVO vo);
	int productimgInsert(ProductimgVO vo);
	int productimgUpdate(ProductimgVO vo);
	int productimgDelete(ProductimgVO vo);
}
