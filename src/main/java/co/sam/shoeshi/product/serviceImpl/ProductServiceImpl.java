package co.sam.shoeshi.product.serviceImpl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.sam.shoeshi.common.DataSource;
import co.sam.shoeshi.product.mapper.ProductMapper;
import co.sam.shoeshi.product.service.ProductService;
import co.sam.shoeshi.product.service.ProductVO;

public class ProductServiceImpl implements ProductService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private ProductMapper map = sqlSession.getMapper(ProductMapper.class);

	@Override
	public List<ProductVO> productSelectList() {
		return map.productSelectList();
	}

	@Override
	public List<HashMap<String, Object>> productJoinSearchList(String val) {
		return map.productJoinSearchList(val);
	}

	@Override
	public List<HashMap<String, Object>> newProductList() {
		return map.newProductList();
	}

	@Override
	public HashMap<String, Object> productJoinSelect(ProductVO vo) {
		return map.productJoinSelect(vo);
	}

	@Override
	public ProductVO productSelect(ProductVO vo) {
		return map.productSelect(vo);
	}

	@Override
	public int productInsert(ProductVO vo) {
		return map.productInsert(vo);
	}

	@Override
	public int productUpdate(ProductVO vo) {
		return map.productUpdate(vo);
	}

	@Override
	public int productDelete(ProductVO vo) {
		return map.productDelete(vo);
	}

	@Override
	public List<ProductVO> productSelectList(String key, String AdminProductSearchValue) {
		return map.productSelectList(key, AdminProductSearchValue);
	}
	
	@Override
	public List<ProductVO> productSearchList(String key, String val) {
		return map.productSearchList(key, val);
	}
	
}
