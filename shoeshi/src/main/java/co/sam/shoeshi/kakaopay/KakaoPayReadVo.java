package co.sam.shoeshi.kakaopay;

import java.sql.Date;

import lombok.Data;

@Data
public class KakaoPayReadVo {
	//response
    private String tid, next_redirect_pc_url;
    private Date created_at;
}
