package co.sam.shoeshi.payment.service;

import java.util.List;

public interface PaymentService {
	List<PaymentVO> paymentSelectList();
	PaymentVO paymentSelect(PaymentVO vo);
	int paymentInsert(PaymentVO vo);
	int paymentUpdate(PaymentVO vo);
	int paymentDelete(PaymentVO vo);
}
