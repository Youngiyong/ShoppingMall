package spring.mvc.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.mvc.domain.DashBoardVO;
import spring.mvc.model.DashBoardDAO;

@Service
public class DashBoardServiceImpl implements DashBoardService {
	
	@Autowired
	DashBoardDAO dao;
	//---------------------------morris service--------------------------------------
	
	public List<DashBoardVO>  hourlySales(DashBoardVO vo) {
		return dao.hourlySales(vo);
				
	}
	
	public List<DashBoardVO> dailySalesScale(DashBoardVO vo){
		return dao.dailySalesScale(vo);
		
	}
	
	//카테고리별 매출
	public List<DashBoardVO> cateSales(DashBoardVO vo){
		return dao.cateSales(vo);
	}
	
	
	
	
	
	//---------------------------index service---------------------------------------
	
	
	//topItems
	public List<DashBoardVO> topItems() {
		return dao.topItems();
	}
	
	
	//일별 매출
	@Override
	public HashMap dailySales() {
		SimpleDateFormat sdf2 = new SimpleDateFormat("yyyyMMdd");
		HashMap map = new HashMap();
		for(int i=0; i<7; i++) {
			Calendar cal3 = Calendar.getInstance();
			cal3.add(Calendar.DATE, -i);
			sdf2.format(cal3.getTime());
			map.put(sdf2.format(cal3.getTime()), 0);
			
		}
		List<DashBoardVO> list = dao.dailySales();
		
		for(int i=0; i<list.size();i++) {
			String date=list.get(i).getO_Date();
			map.put(date, list.get(i).getSales());
		}
		

//		for(Object key : map.keySet()){
//		    String value = map.get(key).toString();
//		    System.out.println(key+" : "+value);
//		}


		
 
		
		
		return map;
		
		
		
		
	}
	
	//국가별 매출
	public List<DashBoardVO> countrySales() {
		List<DashBoardVO> result= new ArrayList();
		List<DashBoardVO> list = dao.countrySales();
		
		for(int i=0; i<4; i++) {
			if(list.size()>i) {
				result.add(list.get(i));
				
			}else {
				DashBoardVO vo = new DashBoardVO();
				vo.setM_country("empty");
				vo.setRatio(0);
				vo.setSales(0);
				result.add(vo);
				
			}
			
		}
		return result;
		
		
	}
	
	
	//월별 매출
	@Override
	public HashMap monthlySales() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMM");
		
		HashMap map = new HashMap();
		
		for(int i=0; i<6; i++) {
			Calendar cal = Calendar.getInstance();
			cal.add(Calendar.MONTH, -i);
			sdf.format(cal.getTime());
			
			map.put(sdf.format(cal.getTime()), 0);
		
		
		}		
		
		List<DashBoardVO> list= dao.monthlySales();
		for(int i=0; i<list.size();i++) {
			
			map.put(list.get(i).getO_Date(), list.get(i).getSales());
		}
		
		return map;
		
	}
	
	
	//구매 루트
	@Override
	public HashMap salesRoot() {	
		HashMap map = new HashMap();
		map.put("direct",0);
		map.put("popular",0);
		map.put("recommend",0);
				
		List<DashBoardVO> list =dao.salesRoot();
		System.out.println("list 사이즈"+list.size());
		
		for(int i=0; i<list.size(); i++) {			
			map.put(list.get(i).getP_root(), list.get(i).getSales());										
		}								
				
		
		return map;
	}
	
	
	//이번달 매출
	@Override
	public DashBoardVO MonthSale() {
		return dao.MonthSale();
	}
	//지난달 매출 이번달 매출 비교
	@Override
	public double lastMonthSale() {
		 
		double resultSale =0;
		double thisMonthSale =0;
		
		if(dao.MonthSale().getSales()>0) {
			thisMonthSale = dao.MonthSale().getSales();
			resultSale =1;
		}
		
		if(dao.lastMonthSale().getSales()>0) {
		double lastMonthSale = dao.lastMonthSale().getSales(); 
		resultSale=(thisMonthSale-lastMonthSale)/lastMonthSale;
		}
		return resultSale*100;		 
	}
	
	//이번달 신규 가입자
	@Override
	public DashBoardVO newMember() {
		System.out.println("service 동작");
		return dao.newMember();
	}
	
	//지난달 신규 가입자 비교
	@Override
	public double lastMonthNewMember() {
		double result =0;
		double thisMonth=0;
		if(dao.newMember().getCount()>0) {
			thisMonth = dao.newMember().getCount();
			result=1;
		}
		
		if(dao.lastMonthNewMember().getCount()>0) {
			double lastMonth = dao.lastMonthNewMember().getCount();
			result=(thisMonth-lastMonth)/lastMonth;
		}
		return result*100;
	}
	
	
	//이번달 신규 상품
	@Override
	public DashBoardVO newProduct() {
		System.out.println("service 동작");
		return dao.newProduct();
	}

	//이번달 상품 판매량
	@Override
	public DashBoardVO salesProduct() {
		System.out.println("service 동작");
		return dao.salesProduct();
	}

	
	//지난달 상품 판매량 이번달 상품 판매량 비교
	@Override
	public double lastMonthsalesProduct() {
		double result =0;
		double thisMonth =0;
		if(dao.salesProduct().getCount()>0) {
			thisMonth = dao.salesProduct().getCount();
			result=1;
		}
		
		if(dao.lastMonthsalesProduct().getCount()>0) {
		double lastMonth = dao.lastMonthsalesProduct().getCount();
		result=(thisMonth-lastMonth)/lastMonth;
		}
		return result*100;
	}
	
	
}
