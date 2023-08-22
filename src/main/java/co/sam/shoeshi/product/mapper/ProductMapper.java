package co.sam.shoeshi.product.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.sam.shoeshi.product.service.ProductVO;

public interface ProductMapper {
	List<ProductVO>	productSelectList();
	List<ProductVO>	productSelectList(@Param("key") String key, @Param("val") String val);
	
	List<ProductVO>	productSearchList(@Param("key") String key, @Param("val") String val);
	ProductVO productSelect(ProductVO vo);
	int productInsert(ProductVO vo);
	int productUpdate(ProductVO vo);
	int productDelete(ProductVO vo);
}
