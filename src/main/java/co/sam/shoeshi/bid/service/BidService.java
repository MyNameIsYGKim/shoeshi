package co.sam.shoeshi.bid.service;

import java.util.HashMap;
import java.util.List;

public interface BidService {
	List<HashMap<String, Object>>bidSearchList(int productId,String type);
	List<HashMap<String, Object>>bidSearchList(int productId,int size,String type);
	HashMap<String, Object>searchSellPrice(int productId,int size);
	HashMap<String, Object>searchBuyPrice(int productId,int size);
	List<BidVO> bidSelectList();
	BidVO bidSelect(BidVO vo);
	int bidInsert(BidVO vo);
	int bidUpdate(BidVO vo);
	int bidDelete(BidVO vo);
}