package spring.mvc.service;

import spring.mvc.domain.PorderAddrVO;
import spring.mvc.domain.PorderInfoVO;
import spring.mvc.domain.PorderListVO;

public interface CheckOutService {

	// 주문/결제 
	void productOrder(PorderListVO vo1, PorderInfoVO vo2, PorderAddrVO vo3);
}
