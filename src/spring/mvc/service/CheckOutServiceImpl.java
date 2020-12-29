package spring.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.mvc.domain.PorderAddrVO;
import spring.mvc.domain.PorderInfoVO;
import spring.mvc.domain.PorderListVO;
import spring.mvc.model.CheckOutDAOImpl;

@Service("checkOutService")
public class CheckOutServiceImpl implements CheckOutService {
	
	@Autowired
	private CheckOutDAOImpl checkOutDAO;
	
	public void productOrder(PorderListVO vo1, PorderInfoVO vo2, PorderAddrVO vo3) {
		checkOutDAO.productOrder(vo1, vo2, vo3);
	}
}
