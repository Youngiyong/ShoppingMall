package spring.mvc.model;

import spring.mvc.domain.MemberVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO{

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public Integer idCheck2(MemberVO vo) {
		System.out.println("===> MemberMapper idCheck2 호출");
		return mybatis.selectOne("user.idCheck2", vo);
	}

	@Override
	public MemberVO idCheck(MemberVO vo) {
		System.out.println("===> MemberMapper idCheck 호출");
		return mybatis.selectOne("user.idCheck", vo);
	}

	@Override
	public int memberInsert(MemberVO vo) {
		System.out.println("===>  MemberMapper userInsert() 호출");
		return mybatis.insert("user.userInsert", vo);
	}

	@Override
	public int userInsertKaKao(MemberVO vo) {
		System.out.println("===>  MemberMapper userInsertKaKao() 호출");
		return mybatis.insert("user.userInsertKaKao", vo);
	}

	@Override
	public List<MemberVO> getMemberList() {
		System.out.println("===>  MemberMapper getMemberList() 호출");
		return mybatis.selectList("user.getMemberList");
	}

	@Override
	public int updateMemberList(List<MemberVO> vo){
		System.out.println("===>  MemberMapper updateMemberList() 호출");
		return mybatis.update("user.updateMemberList", vo);
	}

	@Override
	public int deleteMemberList(List<MemberVO> vo) {
		System.out.println("===>  MemberMapper deleteMemberList() 호출");
		return mybatis.update("user.deleteMemberList", vo);

	}

	@Override
	public MemberVO idSearch(MemberVO vo) {
		System.out.println("===> MemberMapper nidSearch() 호출");
		return mybatis.selectOne("user.idSearch", vo);
	}

	@Override
	public int updatePass(MemberVO vo) {
		System.out.println("===> MemberMapper updatePass() 호출");
		return mybatis.update("user.updatePass", vo);
	}

}
