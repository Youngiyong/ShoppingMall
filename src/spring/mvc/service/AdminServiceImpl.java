package spring.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import spring.mvc.domain.AdminVO;
import spring.mvc.model.AdminDAOImpl;

@Service("adminService")
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminDAOImpl adminDAO;

    @Override
    public AdminVO idPwSearch(AdminVO vo) { return adminDAO.idPwSearch(vo); }

    /**
     * 아이디 중복 체크하는 sql + 로그인 기능 sql
     */
    public AdminVO idCheck_Login(AdminVO vo)
    {
        return adminDAO.idCheck(vo);
    }


    /**
     * 회원가입 sql
     */
    public int adminInsert(AdminVO vo )
    {
        return adminDAO.adminInsert(vo);
    }

}
