package spring.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import spring.mvc.domain.AdminVO;
import spring.mvc.service.AdminService;

import javax.servlet.http.HttpSession;

@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;


    @RequestMapping("/admin/{url}.do")
    public String test(@PathVariable String url) { return "/admin/"+url; }

    //회원가입 요청
    @RequestMapping("/admin/adminInsert.do")
    public String adminInsert(AdminVO vo, Model m){
        adminService.adminInsert(vo);
        return "admin/register_ok";
    }

    //회원가입 유효성 검사
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

    //로그인 체크
    @RequestMapping(value = "/ShoppingMall/admin/loginCheck.do", produces = "application/text;charset=utf-8" )
    @ResponseBody
    public String loginCheck(AdminVO vo, HttpSession session){
        System.out.println(vo.getA_Id());
        AdminVO result = adminService.idCheck_Login(vo);
        String message = "로그인에 실패하였습니다. 아이디 패스워드를 다시 확인해 주세요.";
        if(result==null || result.getA_Id() == null){
           return message;
        }
        else{
            //세션에 login 이름에 사용자이름 저장하기
            session.setAttribute("login", result.getA_Id());
            return "redirect:/ShoppingMall/admin/index.do";
        }
    }

}
