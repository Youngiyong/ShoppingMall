package spring.mvc.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import spring.mvc.domain.MemberVO;
import spring.mvc.domain.OrderAddrVO;
import spring.mvc.domain.OrderInfoVO;
import spring.mvc.domain.OrderListVO;
import spring.mvc.domain.PorderAddrVO;

import java.util.List;
import java.util.Map;

@Repository("orderDAO")
public class OrderDAOImpl implements OrderDAO{

    @Autowired
    private SqlSessionTemplate mybatis;
    
    
    //주소지 찾아오기
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
