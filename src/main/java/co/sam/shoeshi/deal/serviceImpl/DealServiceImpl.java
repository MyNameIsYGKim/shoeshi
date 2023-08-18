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

}
