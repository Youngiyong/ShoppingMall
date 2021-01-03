package spring.mvc.service;

import spring.mvc.domain.MemberVO;

import java.util.List;

public interface MemberService {
	public MemberVO idCheck_Login( MemberVO vo);
	public Integer idCheck2(MemberVO vo);
	public int userInsert(MemberVO vo);
	public int userInsertKaKao(MemberVO vo);

	public List<MemberVO> getMemberList();
	public int deleteMemberList(List<MemberVO> vo);
	public int updateMemberList(List<MemberVO> vo);

	public MemberVO idSearch(MemberVO vo);
	public int updatePass(MemberVO vo);
}
