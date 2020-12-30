package spring.mvc.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import spring.mvc.domain.MemberVO;
import spring.mvc.domain.OrderInfoVO;
import spring.mvc.domain.PorderAddrVO;
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
        for(int i=0; i<list.size(); i++){
            System.out.println(list.get(i));
            System.out.println(list.get(i).get("M_CODE"));
            System.out.println(list.get(i).get("O_POST"));
            System.out.println(list.get(i).get("O_TEL"));
        }
        m.addAttribute("list", list);

        return "/admin/orders";
    }

    @RequestMapping("/admin/orderListUpdate.do")
    @ResponseBody
    public String orderListUpdate(@RequestBody  OrderInfoVO[] vo){
        System.out.println(vo.length);
        List<OrderInfoVO> voList = new ArrayList<>();

        for(int i=0; i<vo.length; i++){
            voList.add(vo[i]);
        }

        orderService.updateOrderListStatus(voList);



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
    }	
    

}
