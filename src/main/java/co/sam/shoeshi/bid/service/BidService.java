package co.sam.shoeshi.bid.service;

import java.util.HashMap;
import java.util.List;

import co.sam.shoeshi.deal.service.DealVO;

public interface BidService {
	List<HashMap<String, Object>>bidSearchList(int productId,String type);
	List<HashMap<String, Object>>bidSearchList(int productId,int size,String type);
	List<BidVO> bidSelectList();
	List<BidVO> bidSelectB(BidVO vo);
	List<BidVO> bidSelectS(BidVO vo);
	BidVO bidSelect(BidVO vo);
	int bidInsert(BidVO vo);
	int bidUpdate(BidVO vo);
	int bidDelete(BidVO vo);
}
