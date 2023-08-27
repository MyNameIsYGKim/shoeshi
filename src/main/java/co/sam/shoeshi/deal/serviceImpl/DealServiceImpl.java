package co.sam.shoeshi.deal.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.sam.shoeshi.common.DataSource;
import co.sam.shoeshi.deal.mapper.DealMapper;
import co.sam.shoeshi.deal.service.DealService;
import co.sam.shoeshi.deal.service.DealVO;

public class DealServiceImpl implements DealService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private DealMapper map = sqlSession.getMapper(DealMapper.class);
	
	@Override
	public List<DealVO> dealSelectList() {
		return map.dealSelectList();
	}

	@Override
	public DealVO dealSelect(DealVO vo) {
		return map.dealSelect(vo);
	}

	@Override
	public int dealInsert(DealVO vo) {
		return map.dealInsert(vo);
	}

	@Override
	public int dealUpdate(DealVO vo) {
		return map.dealUpdate(vo);
	}

	@Override
	public int dealDelete(DealVO vo) {
		return map.dealDelete(vo);
	}

	@Override
	public List<DealVO> dealSelectB(DealVO vo) {
		return map.dealSelectB(vo);
	}

	@Override
	public List<DealVO> dealSelectS(DealVO vo) {
		return map.dealSelectS(vo);
	}

	@Override
	public List<DealVO> dealSelectList(String key, String AdminDealSearchValue) {
		return map.dealSelectList(key, AdminDealSearchValue);
	}

	@Override
	public List<DealVO> dealStateList1() {
		return map.dealStateList1();
	}

	@Override
	public List<DealVO> dealStateList2() {
		return map.dealStateList2();
	}

	@Override
	public List<DealVO> dealStateList3() {
		return map.dealStateList3();
	}

	@Override
	public List<DealVO> dealSelectList2() {
		return map.dealSelectList2();
	}

	@Override
	public List<DealVO> dealSelectList3() {
		return map.dealSelectList3();
	}

}
