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
