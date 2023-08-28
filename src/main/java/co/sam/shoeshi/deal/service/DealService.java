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
	List<DealVO> dealStateList1();
	List<DealVO> dealStateList2();
	List<DealVO> dealStateList3();
	List<DealVO> dealSelectList2();
	List<DealVO> dealSelectList3();
	List<DealVO> dealSelectList2(String key2, String AdminDealSearchValue);
	List<DealVO> dealSelectList3(String key3, String AdminDealSearchValue);
}
