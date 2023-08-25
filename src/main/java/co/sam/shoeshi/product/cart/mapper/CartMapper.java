package co.sam.shoeshi.product.cart.mapper;

import java.util.HashMap;
import java.util.List;

import co.sam.shoeshi.product.cart.service.CartVO;

public interface CartMapper {
	List<HashMap<String, Object>> cartList(CartVO vo);
	
	CartVO cartSelect(CartVO vo);
	
	int cartInsert(CartVO vo);
	
	int cartDelete(CartVO vo);
	
	int cartUpdate(CartVO vo);
}
