package co.sam.shoeshi.deal.serviceImpl;

import java.util.HashMap;
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
	public List<HashMap<String, Object>> dealJoinSelectB(DealVO vo) {

		return map.dealJoinSelectB(vo);
	}

	@Override
	public List<HashMap<String, Object>> dealJoinSelectS(DealVO vo) {
		return map.dealJoinSelectS(vo);
	}

	

	@Override
	public HashMap<String, Object> dealJoinDetailS(DealVO vo) {
		return map.dealJoinDetailS(vo);
	}

	@Override
	public HashMap<String, Object> dealJoinDetailB(DealVO vo) {
		return map.dealJoinDetailB(vo);
	}

}
