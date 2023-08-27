package co.sam.shoeshi.deal.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.sam.shoeshi.deal.service.DealVO;

public interface DealMapper {
	List<DealVO> dealSelectList();
	List<DealVO> dealSelectList(@Param("key") String key, @Param("AdminDealSearchValue") String AdminDealSearchValue);
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
}
