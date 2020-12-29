package spring.mvc.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.domain.PorderAddrVO;
import spring.mvc.domain.PorderInfoVO;
import spring.mvc.domain.PorderListVO;

@Repository("checkOutDAO")
public class CheckOutDAOImpl implements CheckOutDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void productOrder(PorderListVO vo1, PorderInfoVO vo2, PorderAddrVO vo3) {
		
		System.out.println("CheckOutMapper productOrder() 호출");
//		mybatis.insert("checkout.PorderList", vo1);
//		mybatis.insert("checkout.PorderInfo", vo2);
		mybatis.insert("porder.porderAddr", vo3);
	}
}
