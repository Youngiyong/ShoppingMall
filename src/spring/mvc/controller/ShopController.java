package spring.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.domain.ShopVO;
import spring.mvc.service.ShopServiceImpl;

@Controller
public class ShopController {
	
	@Autowired
	private ShopServiceImpl shopService;
	
    @RequestMapping("/shop/{url}.do")
    public String test(@PathVariable String url) {
        System.out.println(url);
        return "/shop/"+url;
    }
    
    //shop.jsp 로 올때 리스트 받아오는 함수
    @RequestMapping("/shop/shop.do")
    public void getProductList(ShopVO vo, Model model) {
    	model.addAttribute("productList", shopService.getProductList(vo));
    }
    
    //shop-details 상세 목록 받아오는 함수
    @RequestMapping("/shop/shop-details.do")
    public void getProduct(ShopVO vo, Model model){
    	model.addAttribute("product", shopService.getProduct(vo));
    }
}
