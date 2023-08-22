package co.sam.shoeshi.bid.service;

import java.util.List;

public interface BidService {
	List<BidVO> bidSelectList();
	List<BidVO> bidSelectList(String key, String val);
	
	BidVO bidSelect(BidVO vo);
	int bidInsert(BidVO vo);
	int bidUpdate(BidVO vo);
	int bidDelete(BidVO vo);
}
