package spring.mvc.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.domain.DashBoardVO;

@Repository
public class DashBoardDAOImpl implements DashBoardDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	//-----------------------------morris dao-----------------------------
	public List<DashBoardVO> hourlySales(DashBoardVO vo){
		
		return mybatis.selectList("dashBoard.hourlySales", vo);
	}
	
	//일별 매출 기간 조절 가능
	public List<DashBoardVO> dailySalesScale(DashBoardVO vo){
		
		return mybatis.selectList("dashBoard.dailySalesScale", vo);
	}
	
	
	//카테고리별 매출
	public List<DashBoardVO> cateSales(DashBoardVO vo){
		return mybatis.selectList("dashBoard.cateSales",vo);
	}
	
	
	
	//-----------------------------index dao------------------------------
	
	//가장많이 팔린 상품 4종
	public List<DashBoardVO> topItems() {
		return mybatis.selectList("dashBoard.topItems");
	}
	
	//국가별 매출
	@Override
	public List<DashBoardVO> countrySales(){
		return mybatis.selectList("dashBoard.countrySales");
	}
	
	
	//일별 매출
	@Override
	public List<DashBoardVO> dailySales(){
		return mybatis.selectList("dashBoard.dailySales");
	}
	
	//월별 매출
	@Override
	public List<DashBoardVO> monthlySales(){
		return mybatis.selectList("dashBoard.monthlySales");
	}
	
	//구매 루트
	@Override
	public List<DashBoardVO> salesRoot() {
		return mybatis.selectList("dashBoard.SalesRoot");
	}
	
	
	//이번달 매출
	@Override
	public DashBoardVO MonthSale() {
		System.out.println("totalSale 호출");
		return mybatis.selectOne("dashBoard.MonthSale");
		
	}
	//지난달 매출
	@Override
	public DashBoardVO lastMonthSale() {
		return mybatis.selectOne("dashBoard.lastMonthSale");
	}
	
	//이번달 신규 가입자
	@Override
	public DashBoardVO newMember() {
		return mybatis.selectOne("dashBoard.newMember");
	}
	
	//지난달 신규 가입자
	@Override
	public DashBoardVO lastMonthNewMember() {
		return mybatis.selectOne("dashBoard.lastMonthNewMember");
	}
		
	
	//이번달 신규 상품
	@Override
	public DashBoardVO newProduct() {
		return mybatis.selectOne("dashBoard.newProduct");
	}
	
	//이번달 상품 판매 수량
	@Override
	public DashBoardVO salesProduct() {
		return mybatis.selectOne("dashBoard.salesProduct");
	}

	//지난달 상품 판매 수량
	@Override
	public DashBoardVO lastMonthsalesProduct() {
		return mybatis.selectOne("dashBoard.lastMonthsalesProduct");
	}

}
