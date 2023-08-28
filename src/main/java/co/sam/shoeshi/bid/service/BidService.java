package co.sam.shoeshi.bid.service;

import java.util.HashMap;
import java.util.List;

public interface BidService {
	List<HashMap<String, Object>>bidSearchList(int productId,String type);
	List<HashMap<String, Object>>bidSearchList(int productId,int size,String type);
	List<HashMap<String, Object>>bidJoinSelectList(BidVO vo);
	HashMap<String, Object>searchSellPrice(int productId,int size);
	HashMap<String, Object>searchBuyPrice(int productId,int size);
	HashMap<String, Object>bidJoinSelect(BidVO vo);
	List<BidVO> bidSelectList();

	List<BidVO> bidSelectList(String key, String val);

	List<BidVO> bidSelectB(BidVO vo);
	List<BidVO> bidSelectS(BidVO vo);

	BidVO bidSelect(BidVO vo);

	int bidInsert(BidVO vo);

	int bidUpdate(BidVO vo);

	int bidDelete(BidVO vo);
	BidVO bidSelectSell(BidVO vo);
	BidVO bidSelectBuy(BidVO vo);
	
	HashMap<String, Object>countDeal(BidVO vo);
}
