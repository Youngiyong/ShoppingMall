package spring.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import spring.mvc.domain.AdminVO;
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
        return "admin/register_ok";
    }

    @RequestMapping(value = "/admin/idCheck.do", produces ="application/text;charset=utf-8")
    @ResponseBody
    public String idCheck(AdminVO vo) {
        AdminVO result = adminService.idCheck_Login(vo);
        String message = "이미 사용중 입니다.";
        if(result  == null) {
            message = "사용가능한 아이디 입니다.";
        }
        return message;

    }

}
