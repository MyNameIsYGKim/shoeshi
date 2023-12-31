package co.sam.shoeshi.client.service;

import java.util.List;

public interface ClientService {
List<ClientVO> clientSelectList();
List<ClientVO> clientSelectList(String key, String clientSearchVal);
ClientVO clientIdFind(ClientVO vo);
ClientVO clientSelect(ClientVO vo);
String clientPasswordCheck(ClientVO vo);
int clientInsert(ClientVO vo);
int adminClientInsert(ClientVO vo);
int clientUpdate(ClientVO vo);
int clientDelete(ClientVO vo);
}
