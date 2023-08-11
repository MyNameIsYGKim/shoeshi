package co.sam.shoeshi.dealService;

import java.util.List;

public interface DealService {
	List<DealVO> dealSelectList();
	DealVO dealSelect(DealVO vo);
	int dealInsert(DealVO vo);
	int dealUpdate(DealVO vo);
	int dealDelete(DealVO vo);
}
