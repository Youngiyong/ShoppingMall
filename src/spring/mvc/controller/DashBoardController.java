package spring.mvc.controller;



import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.domain.DashBoardVO;
import spring.mvc.service.DashBoardService;

@Controller
public class DashBoardController {
	
	@Autowired
	DashBoardService service;
	
	//
	@RequestMapping("dashBoard/chart-morris.do")
	public void morris(DashBoardVO vo,Model m) {
		
		//시간대별 매출
		HashMap mapHourlySales = service.hourlySales(vo);
		
		for(int i=0; i<mapHourlySales.size(); i++) {
			m.addAttribute("hh"+i,mapHourlySales.get("0"+i) );
		
		}
		
		//일별 매출 기간 조정
		m.addAttribute("dailySalesScale", service.dailySalesScale(vo));
	
	
		
		//카테고리별 매출
		m.addAttribute("cateSales", service.cateSales(vo));
	}
	
	
	@RequestMapping("dashBoard/chart-chart-js.do")
	public void chart() {
		
		
	}
	
	
	@RequestMapping("dashBoard/chart-knob.do")
	public void knob() {
		
		
	}
	
	
	

	//dashBoard 첫페이지
	@RequestMapping("dashBoard/index.do")
	public void dashBoardIndex(Model m) {
		System.out.println("dashBoard/index 호출");
		List<DashBoardVO> list= new ArrayList<>();
		
		
		//topItems
		m.addAttribute("topItems", service.topItems());
		
		
		//대시 보드 상단 지표
		list.add(service.newMember());  
		list.add(service.MonthSale());
		list.add(service.salesProduct());
		list.add(service.newProduct());		
		m.addAttribute("VO", list);
		
		
		
		//대시 보드 상단 지표 지난달 비교 비율
		double sales =service.lastMonthSale();
		double product = service.lastMonthsalesProduct();
		double member = service.lastMonthNewMember();
	
		m.addAttribute("product",product);
		m.addAttribute("sales", sales);
		m.addAttribute("member", member);
		
		
		//구매 루트
		
		HashMap mapSalesRoot = service.salesRoot();
		m.addAttribute("di", mapSalesRoot.get("direct"));
		m.addAttribute("po", mapSalesRoot.get("popular"));
		m.addAttribute("re", mapSalesRoot.get("recommend"));
		
		//월별 매출		
		HashMap mapMonthlySales=service.monthlySales();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMM");
		for(int i=0; i<mapMonthlySales.size(); i++) {		
			Calendar cal2 = Calendar.getInstance();
			cal2.add(Calendar.MONTH, -i);
			sdf.format(cal2.getTime());
			
			m.addAttribute("m"+i, mapMonthlySales.get(sdf.format(cal2.getTime())));
	
		}
		
		
		//국가별 매출과 비율
		List<DashBoardVO> listCountrySales =service.countrySales();
		m.addAttribute("listCountrySales", listCountrySales);
		
		//일별 매출
		HashMap mapDailySales = service.dailySales();
		SimpleDateFormat sdf2 = new SimpleDateFormat("yyyyMMdd");
		
		for(int i=0; i<7; i++) {
			Calendar cal3 = Calendar.getInstance();
			cal3.add(Calendar.DATE, -i);
			sdf2.format(cal3.getTime());
			System.out.println(sdf2.format(cal3.getTime()));
			System.out.println(mapDailySales.get(sdf2.format(cal3.getTime())));
			m.addAttribute("d"+i,mapDailySales.get(sdf2.format(cal3.getTime())));
		
		}

		
	}
	
	
	
}
