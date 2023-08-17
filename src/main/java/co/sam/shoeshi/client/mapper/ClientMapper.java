package co.sam.shoeshi.client.mapper;

import java.util.List;

import co.sam.shoeshi.client.service.ClientVO;

public interface ClientMapper {
	List<ClientVO> clientSelectList();
	ClientVO clientSelect(ClientVO vo);
	int clientInsert(ClientVO vo);
	int clientUpdate(ClientVO vo);
	int clientDelete(ClientVO vo);
}
