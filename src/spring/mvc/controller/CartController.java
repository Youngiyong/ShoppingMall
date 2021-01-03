package spring.mvc.controller;

import com.sun.org.apache.xpath.internal.operations.Or;
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

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
public class CartController {

    @Autowired
    private MemberService memberService;
    @Autowired
    private ProductService productService;

    @Autowired
    private OrderService orderService;

    @RequestMapping("/shop/CheckOutPage.do")
    public String CheckOutPage(Model m){
        System.out.println("CheckOutPage 컨트롤러 호출");

        return "/shop/checkout";
    }

    @RequestMapping("/shop/cartDelete.do")
    @ResponseBody
    public String cartDelete(@RequestBody Map<String, Object> map){
        System.out.println(map.get("p_Id"));
        ProductVO vo = new ProductVO();
        vo.setP_Id((String)map.get("p_Id"));
        System.out.println(vo.getP_Id());
        orderService.deleteCartInfo(vo);


        return "삭제";
    }

    @RequestMapping("/shop/updateCartList.do")
    public String updateCartList(@RequestBody OrderListVO[] vo, Model m){
        for(int i=0; i<vo.length; i++) {
            System.out.println("updateCartList 컨트롤러 호출");
            OrderListVO votest = new OrderListVO();
            votest.setP_Id(vo[i].getP_Id());
            votest.setP_Count(vo[i].getP_Count());
            orderService.UpdateCartInfo(votest);
        }
        int price = vo[0].getP_Price();
        System.out.println(price);
        m.addAttribute("total_price", price);

        return "/shop/checkout";
    }


    @RequestMapping("/shop/shopping-cart.do")
    public String getCartList(HttpSession session, Model m){
        System.out.println(session.getAttribute("m_Id"));
        if(session.getAttribute("m_Id")==null){
            return "/shop/shopping-cart";
        }

        MemberVO memberVO = new MemberVO();
        System.out.println(session.getAttribute("m_Id"));
        memberVO.setM_Id((String)session.getAttribute("m_Id"));

        MemberVO result = new MemberVO();
        result = memberService.idCheck_Login(memberVO);
        System.out.println(result.getM_Code());

        List<Map<String,Object>> list = null;


        try{
            list = orderService.getCartList(result);
        }catch (Exception e){
            list = null;
            return "/shop/shopping-cart";
        }




        List<ProductImageVO> pList = new ArrayList<>();
        List<ProductVO> test = new ArrayList<>();
        if(list.size() > 0 ) {
            for (int i = 0; i < list.size(); i++) {
                ProductImageVO vo = new ProductImageVO();
                ProductVO pvo = new ProductVO();
                vo.setP_Id((String) list.get(i).get("P_ID"));
                pList.add(vo);
                pvo.setP_Id((String) list.get(i).get("P_ID"));
                test.add(pvo);
            }

            ProductVO vo = new ProductVO();
            vo.setP_Id((String) list.get(0).get("P_ID"));

            List<ProductImageVO> iList = productService.getProductImg(pList);
            List<String> imgList = new ArrayList<>();

            List<ProductVO> productList = new ArrayList<>();
            productList = productService.getCartProductList(test);

            for (int i = 0; i < iList.size(); i++) {
                String str = new String();
                str = "/ShoppingMall/resources/upload/" + iList.get(i).getI_Fname();
                imgList.add(str);
                System.out.println(imgList.get(i));
                System.out.println(productList.get(i).getP_Name());
            }


            m.addAttribute("list1", list);
            m.addAttribute("list2", iList);
            m.addAttribute("list3", imgList);
            m.addAttribute("list4", productList);
        }else {
            return "/shop/shopping-cart";
        }
        return "/shop/shopping-cart";
    }
}
