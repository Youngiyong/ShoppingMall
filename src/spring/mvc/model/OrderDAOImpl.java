package spring.mvc.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.domain.MemberVO;
import spring.mvc.domain.OrderInfoVO;
import spring.mvc.domain.PorderAddrVO;
import spring.mvc.domain.PorderListVO;

@Repository("orderDAO")
public class OrderDAOImpl implements OrderDAO{

    @Autowired
    private SqlSessionTemplate mybatis;
    
    //카트 물품 담아오기
    public List<PorderListVO> cartList(MemberVO vo){
    	return mybatis.selectList("order.cartList",vo);
    }
    
    
    //주소지 찾아오기
    @Override
    public List<PorderAddrVO> searchAddr(MemberVO vo){
    	return mybatis.selectList("order.searchAddr",vo);
    }
    


    @Override
    public List<Map<String, Object>> getOrderList() {
        System.out.println("===> Mybatis getOrderList() 호출");
        return mybatis.selectList("order.getOrderList");
    }

    @Override
    public int updateOrderListStatus(List<OrderInfoVO> vo) {
        System.out.println("===> Mybatis updateOrderListStatus() 호출");
        return mybatis.update("order.updateOrderListStatus", vo);
    }

    @Override
    public List<Map<String, Object>> getCartList(MemberVO vo) {
        System.out.println("===> Mybatis getCartList() 호출");
        return mybatis.selectList("order.getCartList", vo);
    }
}
