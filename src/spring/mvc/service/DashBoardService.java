package spring.mvc.service;

import java.util.HashMap;
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
	public HashMap salesRoot();
	public HashMap monthlySales(); 
	public List<DashBoardVO> countrySales();
	public HashMap dailySales();
	public List<DashBoardVO> topItems();
	public List<DashBoardVO>  hourlySales(DashBoardVO vo);
	public List<DashBoardVO> dailySalesScale(DashBoardVO vo);
	public List<DashBoardVO> cateSales(DashBoardVO vo);
}
