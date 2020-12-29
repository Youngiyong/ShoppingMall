package spring.mvc.service;

import java.util.List;

import spring.mvc.domain.ShopVO;

public interface ShopService {
	
	// 상품 목록 조회
	List<ShopVO> getProductList(ShopVO vo);
}
