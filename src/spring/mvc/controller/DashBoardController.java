package spring.mvc.controller;



import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.domain.DashBoardVO;
import spring.mvc.domain.DashBoardVOList;
import spring.mvc.service.DashBoardService;

@Controller
public class DashBoardController {
	
	@Autowired
	DashBoardService service;


	@RequestMapping("dashBoard/index.do")
	public void dashBoardIndex(Model m) {
		System.out.println("dashBoard/index 호출");
		List<DashBoardVO> list= new ArrayList<>();
		
		
		
		list.add(service.newMember());  
		list.add(service.MonthSale());
		list.add(service.salesProduct());
		list.add(service.newProduct());		
		double sales =service.lastMonthSale();
		double product = service.lastMonthsalesProduct();
		double member = service.lastMonthNewMember();
	
		m.addAttribute("VO", list);
		m.addAttribute("product",product);
		m.addAttribute("sales", sales);
		m.addAttribute("member", member);
		
		
		
	}
	
	
	
}
