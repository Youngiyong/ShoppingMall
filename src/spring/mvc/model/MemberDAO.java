package spring.mvc.model;

import spring.mvc.domain.MemberVO;
import spring.mvc.domain.ProductVO;

import java.util.List;

public interface MemberDAO {
    /**
     * id 중복체트 기능 구현, 로그인 기능 구현
     */
    MemberVO  idCheck( MemberVO vo );

    /**
     * 회원가입기능 구현
     */
    int memberInsert(MemberVO vo);

    public List<MemberVO> getMemberList();
    public int updateMemberList(List<MemberVO> vo);
    public int deleteMemberList(List<MemberVO> vo);


}
