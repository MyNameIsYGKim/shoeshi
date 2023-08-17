package co.sam.shoeshi.bidService;

import java.util.List;

public interface BidService {
	List<BidVO> bidSelectList();
	BidVO bidSelect(BidVO vo);
	int bidInsert(BidVO vo);
	int bidUpdate(BidVO vo);
	int bidDelete(BidVO vo);
}
