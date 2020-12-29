package spring.mvc.model;

import spring.mvc.domain.PorderAddrVO;
import spring.mvc.domain.PorderInfoVO;
import spring.mvc.domain.PorderListVO;

public interface CheckOutDAO {

	public void productOrder(PorderListVO vo1, PorderInfoVO vo2, PorderAddrVO vo3);
}
