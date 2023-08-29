package co.sam.shoeshi.productimg.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.sam.shoeshi.common.DataSource;
import co.sam.shoeshi.productimg.mapper.ProductimgMapper;
import co.sam.shoeshi.productimg.service.ProductimgService;
import co.sam.shoeshi.productimg.service.ProductimgVO;

public class ProductimgServiceImpl implements ProductimgService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private ProductimgMapper map = sqlSession.getMapper(ProductimgMapper.class);
	
	@Override
	public List<ProductimgVO> productimgSelectList() {
		return map.productimgSelectList();
	}

	@Override
	public ProductimgVO productimgSelect(ProductimgVO vo) {
		return map.productimgSelect(vo);
	}

	@Override
	public int productimgInsert(ProductimgVO vo) {
		return map.productimgInsert(vo);
	}

	@Override
	public int productimgUpdate(ProductimgVO vo) {
		return map.productimgUpdate(vo);
	}

	@Override
	public int productimgDelete(ProductimgVO vo) {
		return map.productimgDelete(vo);
	}

}
