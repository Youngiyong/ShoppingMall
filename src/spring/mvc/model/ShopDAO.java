package spring.mvc.model;

import java.util.List;

import spring.mvc.domain.ShopVO;

public interface ShopDAO {

	public List<ShopVO> getProductList(ShopVO vo);
	
	public ShopVO getProduct(ShopVO vo);
}
