package spring.mvc.service;


import spring.mvc.model.MemberDAOImpl;
import spring.mvc.domain.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAOImpl memberDAO;

	/**
	  * 아이디 중복 체크하는 sql + 로그인 기능 sql
	  */
	  public MemberVO idCheck_Login( MemberVO vo)
	  {
		  return memberDAO.idCheck(vo);
	  }
	  
	  
	  /**
	   * 회원가입 sql
	   */
	   public int userInsert(MemberVO vo )
	   {
		  return memberDAO.memberInsert(vo);
	   }

	@Override
	public List<MemberVO> getMemberList() { return memberDAO.getMemberList(); }

	@Override
	public int updateMemberList(List<MemberVO> vo) { return memberDAO.updateMemberList(vo); }

	@Override
	public int deleteMemberList(List<MemberVO> vo) { return memberDAO.deleteMemberList(vo); }


}
