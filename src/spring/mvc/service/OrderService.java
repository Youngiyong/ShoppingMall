package spring.mvc.service;

import spring.mvc.domain.*;

import java.util.List;
import java.util.Map;

public interface OrderService {

    //주문 정보 전체 불러오기
    public List<Map<String, Object>> getOrderList();

    //주문 상태 업데이트
    public int updateOrderListStatus(List<OrderInfoVO> vo);
}
