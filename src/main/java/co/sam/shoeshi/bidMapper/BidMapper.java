package co.sam.shoeshi.bidMapper;

import java.util.List;

import co.sam.shoeshi.bidService.BidVO;

public interface BidMapper {
	List<BidVO> bidSelectList();
	BidVO bidSelect(BidVO vo);
	int bidInsert(BidVO vo);
	int bidUpdate(BidVO vo);
	int bidDelete(BidVO vo);
}
