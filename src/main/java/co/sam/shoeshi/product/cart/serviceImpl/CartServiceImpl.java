package co.sam.shoeshi.product.cart.serviceImpl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.sam.shoeshi.common.DataSource;
import co.sam.shoeshi.product.cart.mapper.CartMapper;
import co.sam.shoeshi.product.cart.service.CartService;
import co.sam.shoeshi.product.cart.service.CartVO;

public class CartServiceImpl implements CartService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private CartMapper map = sqlSession.getMapper(CartMapper.class);

	@Override
	public List<HashMap<String, Object>> cartList(CartVO vo) {
		return map.cartList(vo);
	}

	@Override
	public CartVO cartSelect(CartVO vo) {
		return map.cartSelect(vo);
	}

	@Override
	public int cartInsert(CartVO vo) {
		return map.cartInsert(vo);
	}

	@Override
	public int cartDelete(CartVO vo) {
		return map.cartDelete(vo);
	}

	@Override
	public int cartUpdate(CartVO vo) {
		return map.cartUpdate(vo);
	}

}
