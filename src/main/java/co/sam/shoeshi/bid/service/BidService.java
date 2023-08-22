package co.sam.shoeshi.bid.service;

import java.util.HashMap;
import java.util.List;

public interface BidService {
	List<HashMap<String, Object>>bidSearchList(int productId);
	List<HashMap<String, Object>>bidSearchList(int productId,int val);
	List<BidVO> bidSelectList();
	BidVO bidSelect(BidVO vo);
	int bidInsert(BidVO vo);
	int bidUpdate(BidVO vo);
	int bidDelete(BidVO vo);
}
