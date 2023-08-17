package co.sam.shoeshi.bid.mapper;

import java.util.List;

import co.sam.shoeshi.bid.service.BidVO;

public interface BidMapper {
	List<BidVO> bidSelectList();
	BidVO bidSelect(BidVO vo);
	int bidInsert(BidVO vo);
	int bidUpdate(BidVO vo);
	int bidDelete(BidVO vo);
}
