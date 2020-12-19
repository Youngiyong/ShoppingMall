package spring.mvc.service;

import spring.mvc.domain.MemberVO;

public interface MemberService {
	public MemberVO idCheck_Login( MemberVO vo);
	public int userInsert(MemberVO vo );

}
