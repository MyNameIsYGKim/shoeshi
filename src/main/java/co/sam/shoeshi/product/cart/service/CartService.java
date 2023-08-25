package co.sam.shoeshi.product.cart.service;

import java.util.HashMap;
import java.util.List;

public interface CartService {
	List<HashMap<String, Object>> cartList(CartVO vo);
	
	CartVO cartSelect(CartVO vo);
	
	int cartInsert(CartVO vo);
	
	int cartDelete(CartVO vo);
	
	int cartUpdate(CartVO vo);
}
