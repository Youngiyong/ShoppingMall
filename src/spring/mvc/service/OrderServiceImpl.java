package spring.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import spring.mvc.domain.OrderAddrVO;
import spring.mvc.domain.OrderInfoVO;
import spring.mvc.domain.OrderListVO;
import spring.mvc.model.OrderDAOImpl;

import java.util.List;
import java.util.Map;

@Service("orderService")
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderDAOImpl orderDAO;

    @Override
    public List<Map<String, Object>> getOrderList() { return orderDAO.getOrderList(); }

    @Override
    public int updateOrderListStatus(List<OrderInfoVO> vo) { return orderDAO.updateOrderListStatus(vo); }
}
