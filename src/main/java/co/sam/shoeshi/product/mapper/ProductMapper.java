package co.sam.shoeshi.product.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.sam.shoeshi.product.service.ProductVO;

public interface ProductMapper {
	List<ProductVO>	productSelectList();
	List<HashMap<String, Object>>productJoinSelectList();
	List<HashMap<String, Object>>productJoinSearchList(String val);
	HashMap<String, Object>productJoinSelect(ProductVO vo);
	ProductVO productSelect(ProductVO vo);
	int productInsert(ProductVO vo);
	int productUpdate(ProductVO vo);
	int productDelete(ProductVO vo);
}
