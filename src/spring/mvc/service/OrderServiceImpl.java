package spring.mvc.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.mvc.domain.*;
import spring.mvc.model.OrderDAOImpl;

@Service("orderService")
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderDAOImpl orderDAO;
    //카트 물품
    public List<PorderListVO> cartList(MemberVO vo){
    	return orderDAO.cartList(vo);
    	
    }
    
    
    //주소지 불러오기
    @Override
    public List<PorderAddrVO> searchAddr(MemberVO vo){
    	return orderDAO.searchAddr(vo);
    }
    
    //주소지 저장
    public int insertAddr(PaymentVO vo) {
    	return orderDAO.insertAddr(vo);
    }


    @Override
    public int UpdateCartInfo(OrderListVO vo){ return orderDAO.UpdateCartInfo(vo);}
    @Override
    public List<Map<String, Object>> getOrderList() { return orderDAO.getOrderList(); }

    @Override
    public List<Map<String, Object>> getCartList(MemberVO vo) { return orderDAO.getCartList(vo); }

    @Override
    public int updateOrderListStatus(List<OrderInfoVO> vo) { return orderDAO.updateOrderListStatus(vo); }

    @Override
    public int deleteCartInfo(ProductVO vo) { return orderDAO.deleteCartInfo(vo); }
}
