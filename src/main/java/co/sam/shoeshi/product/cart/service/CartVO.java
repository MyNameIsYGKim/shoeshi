package co.sam.shoeshi.product.cart.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CartVO {
	private int productId;
	private int cartId;
	private String clientId;
}