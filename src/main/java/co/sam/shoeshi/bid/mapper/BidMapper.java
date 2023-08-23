package co.sam.shoeshi.bid.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.sam.shoeshi.bid.service.BidVO;
import co.sam.shoeshi.deal.service.DealVO;

public interface BidMapper {
	List<HashMap<String, Object>>bidSearchList(@Param("pid")int productId,@Param("size")String type);
	List<HashMap<String, Object>>bidSearchList(@Param("pid")int productId, @Param("size")int size,@Param("type")String type);
	List<BidVO> bidSelectList();
	List<BidVO> bidSelectList(@Param("key") String key, @Param("val") String val);
	
	BidVO bidSelect(BidVO vo);
	int bidInsert(BidVO vo);
	int bidUpdate(BidVO vo);
	int bidDelete(BidVO vo);
}
