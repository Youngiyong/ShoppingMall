package spring.mvc.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import spring.mvc.domain.AdminVO;

@Repository("adminDAO")
public class AdminDAOImpl implements AdminDAO {

    @Autowired
    private SqlSessionTemplate mybatis;

    @Override
    public AdminVO idCheck(AdminVO vo) {
        System.out.println("===> AdminMapper idCheck 호출");
        return mybatis.selectOne("admin.idCheck", vo);
    }

    @Override
    public int adminInsert(AdminVO vo) {
        System.out.println("===> AdminMapper adminInsert() 호출");
        return mybatis.insert("admin.adminInsert", vo);
    }

    @Override
    public AdminVO idSearch(AdminVO vo) {
        System.out.println("===> AdminMapper adminidSearch() 호출");
        return mybatis.selectOne("admin.idSearch", vo);
    }

    @Override
    public int updatePass(AdminVO vo) {
        System.out.println("===> AdminMapper updatePass() 호출");
        return mybatis.update("admin.updatePass", vo);
    }
}
