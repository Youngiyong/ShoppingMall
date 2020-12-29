package spring.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.domain.PorderAddrVO;
import spring.mvc.domain.PorderInfoVO;
import spring.mvc.domain.PorderListVO;
import spring.mvc.service.CheckOutService;

@Controller
public class CheckOutController {

	@Autowired
	private CheckOutService checkOutService;
	
	@RequestMapping("/checkout/checkout.do")
	public String checkout(PorderListVO vo1, PorderInfoVO vo2, PorderAddrVO vo3) {

		if(vo3.getO_addr4() != "") {
			vo3.setO_addr("Country : " +  vo3.getO_addr1() + ", Street Address : " +vo3.getO_addr2() + ", Apartment, suite, unite ect : " + vo3.getO_addr3() + ", Town/City : " + vo3.getO_addr4() + ", Country/State : " + vo3.getO_addr5());
		}else {
			vo3.setO_addr("도로명주소 : " +  vo3.getO_addr1() + ", 지번주소 : " +vo3.getO_addr2() + ", 상세주소 : " + vo3.getO_addr3());
		}
		
		if(vo3.getO_name2() != "") {
			vo3.setO_name(vo3.getO_name1() + " " + vo3.getO_name2());
		}else {
			vo3.setO_name(vo3.getO_name1());
		}
		System.out.println("CheckOutController 호출");
		checkOutService.productOrder(vo1, vo2, vo3);
		return "redirect:/shop/shop.do";
	}
}
