package spring.mvc.service;


import spring.mvc.model.MemberDAOImpl;
import spring.mvc.domain.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Random;


@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAOImpl memberDAO;

	/**
	  * 아이디 중복 체크하는 sql + 로그인 기능 sql
	  */
	  public MemberVO idCheck_Login( MemberVO vo) { return memberDAO.idCheck(vo); }
	  
	  /**
	   * 회원가입 sql
	   */
	   public int userInsert(MemberVO vo )
	   {
		  return memberDAO.memberInsert(vo);
	   }

	@Override
	public int userInsertKaKao(MemberVO vo) { return memberDAO.userInsertKaKao(vo); }

	@Override
	public MemberVO idSearch(MemberVO vo) { return memberDAO.idSearch(vo); }
	@Override
	public int updatePass(MemberVO vo) {
		Random rnd = new Random();
		StringBuffer buf = new StringBuffer();
		for (int i = 0; i < 10; i++) {
			if (rnd.nextBoolean()) {
				buf.append((char) ((int) (rnd.nextInt(26)) + 65));
			} else {
				buf.append((rnd.nextInt(10)));
			}

		}

		vo.setM_Pass(String.valueOf(buf));
		System.out.println(vo.getM_Pass());
		return memberDAO.updatePass(vo);
	}

	@Override
	public List<MemberVO> getMemberList() { return memberDAO.getMemberList(); }

	@Override
	public int updateMemberList(List<MemberVO> vo) { return memberDAO.updateMemberList(vo); }

	@Override
	public int deleteMemberList(List<MemberVO> vo) { return memberDAO.deleteMemberList(vo); }


}
