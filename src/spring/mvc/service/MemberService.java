package spring.mvc.service;

import spring.mvc.domain.MemberVO;

import java.util.List;

public interface MemberService {
	public MemberVO idCheck_Login( MemberVO vo);
	public int userInsert(MemberVO vo );

	public List<MemberVO> getMemberList();
	public int deleteMemberList(List<MemberVO> vo);
	public int updateMemberList(List<MemberVO> vo);

}
