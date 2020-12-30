package spring.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import spring.mvc.domain.MemberVO;
import spring.mvc.domain.OrderAddrVO;
import spring.mvc.domain.OrderInfoVO;
import spring.mvc.domain.OrderListVO;
import spring.mvc.domain.PorderAddrVO;
import spring.mvc.model.OrderDAOImpl;

import java.util.List;
import java.util.Map;

@Service("orderService")
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderDAOImpl orderDAO;
    
    //주소지 불러오기
    @Override
    public List<PorderAddrVO> searchAddr(MemberVO vo){
    	return orderDAO.searchAddr(vo);
    }
 

    @Override
    public List<Map<String, Object>> getOrderList() { return orderDAO.getOrderList(); }

    @Override
    public List<Map<String, Object>> getCartList(MemberVO vo) { return orderDAO.getCartList(vo); }

    @Override
    public int updateOrderListStatus(List<OrderInfoVO> vo) { return orderDAO.updateOrderListStatus(vo); }


}
