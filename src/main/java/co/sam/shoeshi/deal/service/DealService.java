package co.sam.shoeshi.deal.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface DealService {
	List<DealVO> dealSelectList();
	List<DealVO> dealSelectList(String key, String AdminDealSearchValue);
	List<DealVO> dealSelectB(DealVO vo);
	List<DealVO> dealSelectS(DealVO vo);
	DealVO dealSelect(DealVO vo);
	int dealInsert(DealVO vo);
	int dealUpdate(DealVO vo);
	int dealDelete(DealVO vo);
	List<DealVO> dealStateList1();
	List<DealVO> dealStateList2();
	List<DealVO> dealStateList3();
	List<DealVO> dealSelectList2();
	List<DealVO> dealSelectList3();
	List<DealVO> dealSelectList2(String key2, String AdminDealSearchValue);
	List<DealVO> dealSelectList3(String key3, String AdminDealSearchValue);
}
