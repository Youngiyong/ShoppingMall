package spring.mvc.service;

import java.util.List;

import spring.mvc.domain.DashBoardVO;

public interface DashBoardService {
	
	public DashBoardVO MonthSale();
	public double lastMonthSale();
	public DashBoardVO newMember();
	public double lastMonthNewMember();
	public DashBoardVO newProduct();
	public DashBoardVO salesProduct();
	public double lastMonthsalesProduct();
}
