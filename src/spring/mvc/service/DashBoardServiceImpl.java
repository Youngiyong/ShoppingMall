package spring.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.mvc.domain.DashBoardVO;
import spring.mvc.model.DashBoardDAO;

@Service
public class DashBoardServiceImpl implements DashBoardService {
	
	@Autowired
	DashBoardDAO dao;
	
	//이번달 매출
	@Override
	public DashBoardVO MonthSale() {
		System.out.println("service 동작");
		return dao.MonthSale();
	}
	//지난달 매출 이번달 매출 비교
	@Override
	public double lastMonthSale() {
		 
		double resultSale =0;
		if(dao.MonthSale()!=null&&dao.lastMonthSale()!=null) {
		 double thisMonthSale = dao.MonthSale().getSales();
		 double lastMonthSale = dao.lastMonthSale().getSales();
		 resultSale=(thisMonthSale-lastMonthSale)/lastMonthSale;
		}
		 return resultSale;
		 
		 
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
		
		if(dao.newMember()!=null&&dao.lastMonthNewMember()!=null) {
		double thisMonth = dao.newMember().getCount();
		double lastMonth = dao.lastMonthNewMember().getCount();
		result=(thisMonth-lastMonth)/lastMonth;
			System.out.println(thisMonth);
			System.out.println(lastMonth);
			System.out.println(result);
		}
		return result;
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
	 
		
		if(dao.salesProduct()!=null&&dao.lastMonthsalesProduct()!=null) {
		double thisMonth = dao.salesProduct().getCount();
		double lastMonth = dao.lastMonthsalesProduct().getCount();

		result=(thisMonth-lastMonth)/lastMonth;
		}
		return result;
	}
	
	
}
