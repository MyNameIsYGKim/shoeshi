package co.sam.shoeshi.payment.serviceImple;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.sam.shoeshi.common.DataSource;
import co.sam.shoeshi.payment.mapper.PaymentMapper;
import co.sam.shoeshi.payment.service.PaymentService;
import co.sam.shoeshi.payment.service.PaymentVO;

public class PaymentServiceImpl implements PaymentService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private PaymentMapper map = sqlSession.getMapper(PaymentMapper.class);
	
	@Override
	public List<PaymentVO> paymentSelectList() {
		return map.paymentSelectList();
	}

	@Override
	public PaymentVO paymentSelect(PaymentVO vo) {
		return map.paymentSelect(vo);
	}

	@Override
	public int paymentInsert(PaymentVO vo) {
		return map.paymentInsert(vo);
	}

	@Override
	public int paymentUpdate(PaymentVO vo) {
		return map.paymentUpdate(vo);
	}

	@Override
	public int paymentDelete(PaymentVO vo) {
		return map.paymentDelete(vo);
	}

}
