package spring.mvc.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.domain.*;

@Repository("orderDAO")
public class OrderDAOImpl implements OrderDAO{

    @Autowired
    private SqlSessionTemplate mybatis;
    
    //주소지 저장하기
    public int insertAddr(PaymentVO vo) {
    	return mybatis.insert("order.insertAddr", vo);
    }
    
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

        try{
            return mybatis.selectList("order.getCartList", vo);
        }catch (Exception e){
            Map<String, Object> map = new HashMap<>();
            map.put("test","1234");
            List<Map<String,Object>> list = null;
            list.add(map);
            return list;
        }

    }

    @Override
    public int UpdateCartInfo(OrderListVO vo) {
        System.out.println("===> Mybatis UpdateCartInfo() 호출");
        return mybatis.delete("order.UpdateCartInfo", vo);
    }


    @Override
    public int deleteCartInfo(ProductVO vo) {
        System.out.println("===> Mybatis deleteCartInfo() 호출");
        return mybatis.delete("order.deleteCartInfo", vo);
    }
}
