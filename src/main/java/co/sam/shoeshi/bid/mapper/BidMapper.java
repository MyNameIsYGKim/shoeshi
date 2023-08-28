package co.sam.shoeshi.bid.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.sam.shoeshi.bid.service.BidVO;

public interface BidMapper {
	List<HashMap<String, Object>>bidSearchList(@Param("pid")int productId,@Param("size")String type);
	List<HashMap<String, Object>>bidSearchList(@Param("pid")int productId, @Param("size")int size,@Param("type")String type);
	List<HashMap<String, Object>>bidJoinSelectList(BidVO vo);
	HashMap<String, Object>searchSellPrice(@Param("pid")int productId,@Param("size")int size);
	HashMap<String, Object>searchBuyPrice(@Param("pid")int productId,@Param("size")int size);
	HashMap<String, Object>bidJoinSelect(BidVO vo);
	List<BidVO> bidSelectList();
	List<BidVO> bidSelectList(@Param("key") String key, @Param("val") String val);
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
