package spring.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import spring.mvc.domain.vo.AdminVO;
import spring.mvc.service.AdminService;

@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;

    @RequestMapping("/admin/{url}.do")
    public String test(@PathVariable String url) { return "/admin/"+url; }

    @RequestMapping("/admin/adminInsert.do")
    public String adminInsert(AdminVO vo, Model m){
        System.out.println(vo.getA_Id());
        System.out.println(vo.getA_Pass());
        int result = adminService.adminInsert(vo);
        String message = vo.getA_Id()+"님 나가세요.";
        if(result>0){
            message = vo.getA_Id() + "회원가입을 축하드립니다.";
        }

        m.addAttribute("message", message);
        System.out.println("insert완료");
        return "login/regist_ok";
    }
}
