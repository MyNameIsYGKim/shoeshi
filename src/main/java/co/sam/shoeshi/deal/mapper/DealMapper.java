package co.sam.shoeshi.deal.mapper;

import java.util.List;

import co.sam.shoeshi.deal.service.DealVO;

public interface DealMapper {
	List<DealVO> dealSelectList();
	DealVO dealSelect(DealVO vo);
	int dealInsert(DealVO vo);
	int dealUpdate(DealVO vo);
	int dealDelete(DealVO vo);
	
}
