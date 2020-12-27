package spring.mvc.model;

import spring.mvc.domain.*;

import java.util.*;

public interface OrderDAO {
    //주문 정보 전체 불러오기
    public List<OrderListVO> getOrderList(OrderListVO vo);
    public List<OrderAddrVO> getOrderAddrList(OrderAddrVO vo);
    public List<OrderInfoVO> getOrderInfoList(OrderInfoVO vo);

}
