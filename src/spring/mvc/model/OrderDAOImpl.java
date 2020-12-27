package spring.mvc.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import spring.mvc.domain.OrderAddrVO;
import spring.mvc.domain.OrderInfoVO;
import spring.mvc.domain.OrderListVO;

import java.util.List;

@Repository("orderDAO")
public class OrderDAOImpl implements OrderDAO{

    @Autowired
    private SqlSessionTemplate mybatis;


    @Override
    public List<OrderListVO> getOrderList(OrderListVO vo) {
        System.out.println("===> Mybatis getOrderList() 호출");
        return mybatis.selectList("product.getOrderList", vo);
    }

    @Override
    public List<OrderAddrVO> getOrderAddrList(OrderAddrVO vo) {
        System.out.println("===> Mybatis getOrderAddrList() 호출");
        return mybatis.selectList("product.getOrderAddrList", vo);
    }

    @Override
    public List<OrderInfoVO> getOrderInfoList(OrderInfoVO vo) {
        System.out.println("===> Mybatis getOrderInfoList() 호출");
        return mybatis.selectList("product.getOrderInfoList", vo);
    }
}
