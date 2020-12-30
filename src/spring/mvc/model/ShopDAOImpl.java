package spring.mvc.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.domain.ShopVO;

@Repository("shopDAO")
public class ShopDAOImpl implements ShopDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	public List<ShopVO> getProductList(ShopVO vo){
		System.out.println("ShopMapper getProductList() 호출");
		return mybatis.selectList("shop.getProductList", vo);
	}
	
	public ShopVO getProduct(ShopVO vo) {
		System.out.println("ShopMapper getProduct() 호출");
		return (ShopVO) mybatis.selectOne("shop.getProduct", vo);
	}
	
	public void insertCart(ShopVO vo) {
		System.out.println("ShopMapper insertCart() 호출");
		System.out.println(vo.getM_id());
		System.out.println(vo.getP_id());
		System.out.println(vo.getP_count());
		mybatis.insert("shop.insertCart", vo);
	}

}
