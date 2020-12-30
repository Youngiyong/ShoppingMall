package spring.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.mvc.domain.ShopVO;
import spring.mvc.model.ShopDAOImpl;

@Service("shopService")
public class ShopServiceImpl implements ShopService{

	@Autowired
	private ShopDAOImpl shopDAO;
	
	
	public List<ShopVO> getProductList(ShopVO vo){
		return shopDAO.getProductList(vo);
	}
	
	public ShopVO getProduct(ShopVO vo) {
		return shopDAO.getProduct(vo);
	}
	
	public void insertCart(ShopVO vo) {
		shopDAO.insertCart(vo);
	}
}
