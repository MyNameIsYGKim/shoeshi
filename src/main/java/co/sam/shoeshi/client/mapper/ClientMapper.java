package co.sam.shoeshi.client.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.sam.shoeshi.client.service.ClientVO;

public interface ClientMapper {
	List<ClientVO> clientSelectList();
	List<ClientVO> clientSelectList(@Param("key") String key, @Param("clientSearchVal") String clientSearchVal);
	ClientVO clientIdFind(ClientVO vo);
	ClientVO clientSelect(ClientVO vo);
	String clientPasswordCheck(ClientVO vo);
	int clientInsert(ClientVO vo);
	int clientUpdate(ClientVO vo);
	int clientDelete(ClientVO vo);
}
