package co.sam.shoeshi.client.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.sam.shoeshi.client.mapper.ClientMapper;
import co.sam.shoeshi.client.service.ClientService;
import co.sam.shoeshi.client.service.ClientVO;
import co.sam.shoeshi.common.DataSource;

public class ClientServiceImpl implements ClientService {

	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private ClientMapper map = sqlSession.getMapper(ClientMapper.class);

	@Override
	public List<ClientVO> clientSelectList() {
		return map.clientSelectList();
	}

	@Override
	public ClientVO clientIdFind(ClientVO vo) {
		return map.clientIdFind(vo);
	}

	@Override
	public ClientVO clientSelect(ClientVO vo) {
		return map.clientSelect(vo);
	}

	@Override
	public int clientInsert(ClientVO vo) {
		return map.clientInsert(vo);
	}

	@Override
	public int clientUpdate(ClientVO vo) {
		return map.clientUpdate(vo);
	}

	@Override
	public int clientDelete(ClientVO vo) {
		return map.clientDelete(vo);
	}

	@Override
	public List<ClientVO> clientSelectList(String key, String val2) {
		return map.clientSelectList(key, val2);
	}
}
