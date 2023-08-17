package co.sam.shoeshi.deal.service;

import java.util.List;

public interface DealService {
	List<DealVO> dealSelectList();
	DealVO dealSelect(DealVO vo);
	int dealInsert(DealVO vo);
	int dealUpdate(DealVO vo);
	int dealDelete(DealVO vo);
}
