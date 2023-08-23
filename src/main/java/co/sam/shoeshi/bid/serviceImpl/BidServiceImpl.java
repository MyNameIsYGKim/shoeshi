package co.sam.shoeshi.bid.serviceImpl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.sam.shoeshi.bid.mapper.BidMapper;
import co.sam.shoeshi.bid.service.BidService;
import co.sam.shoeshi.bid.service.BidVO;
import co.sam.shoeshi.common.DataSource;

public class BidServiceImpl implements BidService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private BidMapper map = sqlSession.getMapper(BidMapper.class);
	
	@Override
	public
	List<HashMap<String, Object>>bidSearchList(int productId,String type){
		return map.bidSearchList(productId,type);
	}
	@Override
	public
	List<HashMap<String, Object>>bidSearchList(int productId, int size,String type){
		return map.bidSearchList(productId, size, type);
	}
	@Override
	public
	HashMap<String, Object>searchSellPrice(int productId,int size){
		return map.searchSellPrice(productId,size);
	}
	@Override
	public
	HashMap<String, Object>searchBuyPrice(int productId,int size){
		return map.searchBuyPrice(productId,size);
	}
	
	@Override
	public List<BidVO> bidSelectList() {
		return map.bidSelectList();
	}

	@Override
	public BidVO bidSelect(BidVO vo) {
		return map.bidSelect(vo);
	}

	@Override
	public int bidInsert(BidVO vo) {
		return map.bidInsert(vo);
	}

	@Override
	public int bidUpdate(BidVO vo) {
		return map.bidUpdate(vo);
	}

	@Override
	public int bidDelete(BidVO vo) {
		return map.bidDelete(vo);
	}
	
	@Override
	public List<BidVO> bidSelectB(BidVO vo) {
		return map.bidSelectB(vo);
	}

	@Override
	public List<BidVO> bidSelectList(String key, String val) {
		return map.bidSelectList(key, val);
	}

}