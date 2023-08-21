package co.sam.shoeshi.bid.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BidVO {
	private int bidNo;
	private String productId;
	private int bidPrice;
	private String bidType;
	private String clientId;
	private int productSize;
}
