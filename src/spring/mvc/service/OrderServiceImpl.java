package spring.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import spring.mvc.domain.OrderAddrVO;
import spring.mvc.domain.OrderInfoVO;
import spring.mvc.domain.OrderListVO;
import spring.mvc.model.OrderDAOImpl;

import java.util.List;

@Service("orderService")
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderDAOImpl orderDAO;

    @Override
    public List<OrderListVO> getOrderList(OrderListVO vo) { return orderDAO.getOrderList(vo); }

    @Override
    public List<OrderAddrVO> getOrderAddrList(OrderAddrVO vo) { return orderDAO.getOrderAddrList(vo); }

    @Override
    public List<OrderInfoVO> getOrderInfoList(OrderInfoVO vo) { return orderDAO.getOrderInfoList(vo); }
}
