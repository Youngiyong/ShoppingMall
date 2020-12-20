package spring.mvc.model;

import spring.mvc.domain.vo.AdminVO;

public interface AdminDAO {
    /**
     * id 중복체트 기능 구현
     */
    AdminVO idCheck(AdminVO vo );

    /**
     * 회원가입기능 구현
     */
    int adminInsert(AdminVO vo);

    /**
     * 로그인 확인 기능 구현
     */
    AdminVO adminLogin(AdminVO vo);

}
