package spring.mvc.model;

import java.util.List;

import spring.mvc.domain.DashBoardVO;

public interface DashBoardDAO {
	
	public DashBoardVO MonthSale();
	public DashBoardVO lastMonthSale();
	public DashBoardVO newMember();
	public DashBoardVO newProduct();
	public DashBoardVO salesProduct();
	public DashBoardVO lastMonthsalesProduct();
	public DashBoardVO lastMonthNewMember();


}
