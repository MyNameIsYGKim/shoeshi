package co.sam.shoeshi.bid.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.sam.shoeshi.bid.service.BidVO;

public interface BidMapper {
	List<BidVO> bidSelectList();
	List<BidVO> bidSelectList(@Param("key") String key, @Param("val") String val);
	
	BidVO bidSelect(BidVO vo);
	int bidInsert(BidVO vo);
	int bidUpdate(BidVO vo);
	int bidDelete(BidVO vo);
}
