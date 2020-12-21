package spring.mvc.service;

import spring.mvc.domain.AdminVO;

public interface AdminService {
    public AdminVO idCheck_Login(AdminVO vo);
    public int adminInsert(AdminVO vo);
    public AdminVO idSearch(AdminVO vo);
}
