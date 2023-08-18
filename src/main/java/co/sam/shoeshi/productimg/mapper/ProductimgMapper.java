package co.sam.shoeshi.productimg.mapper;

import java.util.List;

import co.sam.shoeshi.productimg.service.ProductimgVO;

public interface ProductimgMapper {
	List<ProductimgVO> productimgSelectList();
	ProductimgVO productimgSelect(ProductimgVO vo);
	int productimgInsert(ProductimgVO vo);
	int productimgUpdate(ProductimgVO vo);
	int productimgDelete(ProductimgVO vo);
}
