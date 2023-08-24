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
}
