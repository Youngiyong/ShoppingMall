package spring.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import spring.mvc.domain.MemberVO;
import spring.mvc.domain.ProductImageVO;
import spring.mvc.domain.ProductVO;
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

    @RequestMapping("/shop/shopping-cart.do")
    public String getCartList(HttpSession session, Model m){

        if(session.getAttribute("m_Id").equals(null)){
            return "/shop/shopping-cart";
        }

        MemberVO memberVO = new MemberVO();
        System.out.println(session.getAttribute("m_Id"));
        memberVO.setM_Id((String)session.getAttribute("m_Id"));

        MemberVO result = new MemberVO();
        result = memberService.idCheck_Login(memberVO);
        System.out.println(result.getM_Code());
        List<Map<String,Object>> list;
        list = orderService.getCartList(result);

        List<ProductImageVO> pList = new ArrayList<>();
        List<ProductVO> test = new ArrayList<>();
        for(int i=0; i<list.size(); i++){
            ProductImageVO vo = new ProductImageVO();
            ProductVO pvo = new ProductVO();
            vo.setP_Id((String)list.get(i).get("P_ID"));
            pList.add(vo);
            pvo.setP_Id((String)list.get(i).get("P_ID"));
            test.add(pvo);
        }

        ProductVO vo = new ProductVO();
        vo.setP_Id((String)list.get(0).get("P_ID"));

        List<ProductImageVO> iList = productService.getProductImg(pList);
        List<String> imgList = new ArrayList<>();

        List<ProductVO> productList = new ArrayList<>();
        productList = productService.getCartProductList(test);

        for(int i=0; i<iList.size(); i++){
            String str = new String();
            str = "/ShoppingMall/resources/upload/" + iList.get(i).getI_Fname();
            imgList.add(str);
            System.out.println(imgList.get(i));
            System.out.println(productList.get(i).getP_Name());
        }



        m.addAttribute("list1", list);
        m.addAttribute("list2", iList);
        m.addAttribute("list3", imgList);
        m.addAttribute("list4", productList );
        return "/shop/shopping-cart";
    }
}
