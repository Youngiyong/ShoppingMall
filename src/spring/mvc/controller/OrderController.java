package spring.mvc.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.faces.annotation.RequestMap;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import spring.mvc.domain.*;
import spring.mvc.service.MemberService;
import spring.mvc.service.OrderService;
import spring.mvc.service.ProductService;

@Controller
public class OrderController {

    @Autowired
    private MemberService memberService;

    @Autowired
    private ProductService productService;

    @Autowired
    private OrderService orderService;


    @RequestMapping("/admin/orders.do")
    public String getOrderList(Model m){
        List<Map<String, Object>> list = orderService.getOrderList();
        m.addAttribute("list", list);

        return "/admin/orders";
    }

    @RequestMapping("/admin/orderListUpdate.do")
    @ResponseBody
    public String orderListUpdate(@RequestBody  OrderInfoVO[] vo){

        for(int i=0; i<vo.length; i++){
            List<OrderInfoVO> voList = new ArrayList<>();
            voList.add(vo[i]);
            orderService.updateOrderListStatus(voList);
        }

        return "성공";
    }



    //CheckOut 결제
    @RequestMapping("shop/checkout.do")
    public void checkOut(HttpSession session, Model m) {
    	
    	//주소지 찾기
    	MemberVO vo = new MemberVO();
    	vo.setM_Code((String)session.getAttribute("m_Code"));
    	List<PorderAddrVO> addrVO =orderService.searchAddr(vo);
    	m.addAttribute("addrVO", addrVO);
    	
    	//카트에서 물품 가져오기
    	m.addAttribute("cartList", orderService.cartList(vo));

    }	
    
    //결제 진행
    @RequestMapping("shop/payment.do")
    public void payment(HttpSession session,Model m, PaymentVO vo) {
    	

    	//배송지 저장
    	if(vo.getPa_code().length()<1) {
    		vo.setM_Code((String)session.getAttribute("m_Code"));
    		orderService.insertAddr(vo);
    	}
    	
    	System.out.println(vo.getP_Price());
    	System.out.println(vo.getO_Tel());
    	m.addAttribute("Bname",session.getAttribute("m_Name"));
    	m.addAttribute("order", vo);
    	
    }
    
    
  //결제 완료
    @RequestMapping("shop/paymentDone.do")
    public String paymentDone(HttpSession session,OrderInfoVO vo) {
    	
    	//porder_info 생성
    	
    	//카트 데이터 삭제
    	MemberVO vo2 = new MemberVO();
    	vo2.setM_Code((String)session.getAttribute("m_Code"));
    	

    	//메인 화면으로 돌아가기
    	return "redirect:/shop/shop.do";
    	
    }
    
    
    
    

}
