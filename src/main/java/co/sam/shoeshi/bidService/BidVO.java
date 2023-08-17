package co.sam.shoeshi.bidService;

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
}
