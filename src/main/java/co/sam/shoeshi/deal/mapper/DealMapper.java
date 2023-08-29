package co.sam.shoeshi.deal.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.sam.shoeshi.deal.service.DealVO;

public interface DealMapper {
	List<DealVO> dealSelectList();
	List<DealVO> dealSelectB(DealVO vo);
	List<DealVO> dealSelectS(DealVO vo);
	DealVO dealSelect(DealVO vo);
	int dealInsert(DealVO vo);
	int dealUpdate(DealVO vo);
	int dealDelete(DealVO vo);
	DealVO dealSelectMaxNo();
	List<DealVO> dealSelectList(String key, String AdminDealSearchValue);
	List<HashMap<String, Object>> dealJoinSelectB(DealVO vo);
	List<HashMap<String, Object>> dealJoinSelectS(DealVO vo);
	HashMap<String,Object> dealJoinDetailS(DealVO vo);
	HashMap<String,Object> dealJoinDetailB(DealVO vo);
	
	
	List<DealVO> dealStateList1();
	List<DealVO> dealStateList2();
	List<DealVO> dealStateList3();
	List<DealVO> dealSelectList2();
	List<DealVO> dealSelectList3();
	List<DealVO> dealSelectList2(@Param("key2") String key2, @Param("AdminDealSearchValue2") String AdminDealSearchValue2);
	List<DealVO> dealSelectList3(@Param("key3") String key3, @Param("AdminDealSearchValue3") String AdminDealSearchValue3);
}
