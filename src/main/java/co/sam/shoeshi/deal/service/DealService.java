package co.sam.shoeshi.deal.service;

import java.util.HashMap;
import java.util.List;

public interface DealService {
	List<DealVO> dealSelectList();
	List<DealVO> dealSelectList(String key, String AdminDealSearchValue);
	List<DealVO> dealSelectB(DealVO vo);
	List<DealVO> dealSelectS(DealVO vo);
	List<HashMap<String,Object>> dealJoinSelectB(DealVO vo);
	List<HashMap<String,Object>> dealJoinSelectS(DealVO vo);
	
	HashMap<String,Object> dealJoinDetailS(DealVO vo);
	HashMap<String,Object> dealJoinDetailB(DealVO vo);
	
	DealVO dealSelect(DealVO vo);
	int dealInsert(DealVO vo);
	int dealUpdate(DealVO vo);
	int dealDelete(DealVO vo);
	DealVO dealSelectMaxNo();
}
