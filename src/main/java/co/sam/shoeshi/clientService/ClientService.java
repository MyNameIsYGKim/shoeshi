package co.sam.shoeshi.clientService;

import java.util.List;

public interface ClientService {
List<ClientVO> clientSelectList();
ClientVO clientSelect(ClientVO vo);
int clientInsert(ClientVO vo);
int clientUpdate(ClientVO vo);
int clientDelete(ClientVO vo);
}
