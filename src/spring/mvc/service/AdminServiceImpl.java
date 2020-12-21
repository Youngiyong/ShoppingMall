package spring.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import spring.mvc.domain.AdminVO;
import spring.mvc.model.AdminDAOImpl;

import java.util.Random;

@Service("adminService")
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminDAOImpl adminDAO;

    @Override
    public AdminVO idSearch(AdminVO vo) { return adminDAO.idSearch(vo); }

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
    public int adminInsert(AdminVO vo)
    {
        return adminDAO.adminInsert(vo);
    }

    @Override
    public int updatePass(AdminVO vo) {
        Random rnd = new Random();
        StringBuffer buf = new StringBuffer();
            for (int i = 0; i < 10; i++) {
                if (rnd.nextBoolean()) {
                    buf.append((char) ((int) (rnd.nextInt(26)) + 65));
                } else {
                    buf.append((rnd.nextInt(10)));
                }

            }

        vo.setA_Pass(String.valueOf(buf));
        System.out.println(vo.getA_Pass());
        return adminDAO.updatePass(vo);
    }
}
