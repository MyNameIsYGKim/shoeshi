package co.sam.shoeshi.payment.mapper;

import java.util.List;

import co.sam.shoeshi.payment.service.PaymentVO;

public interface PaymentMapper {
	List<PaymentVO> paymentSelectList();
	PaymentVO paymentSelect(PaymentVO vo);
	int paymentInsert(PaymentVO vo);
	int paymentUpdate(PaymentVO vo);
	int paymentDelete(PaymentVO vo);
}
