package spring.mvc.model;

import spring.mvc.domain.*;

import java.util.*;

public interface OrderDAO {
    //주문 정보 전체 불러오기
    public List<Map<String, Object>> getOrderList();
    public List<Map<String, Object>> getCartList(MemberVO vo);

    //주문 상태 업데이트
    public int updateOrderListStatus(List<OrderInfoVO> vo);
    
    
    //주소지 불러오기
    public List<PorderAddrVO> searchAddr(MemberVO vo);
    
    public List<PorderListVO> cartList(MemberVO vo);

    public int deleteCartInfo(ProductVO vo);
}
