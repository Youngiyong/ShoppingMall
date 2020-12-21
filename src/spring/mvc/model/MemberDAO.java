package spring.mvc.model;

import spring.mvc.domain.MemberVO;

public interface MemberDAO {
    /**
     * id 중복체트 기능 구현, 로그인 기능 구현
     */
    MemberVO  idCheck( MemberVO vo );

    /**
     * 회원가입기능 구현
     */
    int memberInsert(MemberVO vo);

}
