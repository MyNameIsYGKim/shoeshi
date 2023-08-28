package co.sam.shoeshi.deal.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.sam.shoeshi.deal.service.DealVO;

public interface DealMapper {
	List<DealVO> dealSelectList();
	List<DealVO> dealSelectList(@Param("key") String key, @Param("AdminDealSearchValue") String AdminDealSearchValue);
	List<DealVO> dealSelectB(DealVO vo);
	List<DealVO> dealSelectS(DealVO vo);
	List<HashMap<String, Object>> dealJoinSelectB(DealVO vo);
	List<HashMap<String, Object>> dealJoinSelectS(DealVO vo);
	HashMap<String,Object> dealJoinDetailS(DealVO vo);
	HashMap<String,Object> dealJoinDetailB(DealVO vo);
	DealVO dealSelect(DealVO vo);
	int dealInsert(DealVO vo);
	int dealUpdate(DealVO vo);
	int dealDelete(DealVO vo);
}
