package spring.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import spring.mvc.domain.vo.MemberVO;
import spring.mvc.service.MemberService;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController {

    @Autowired
    private MemberService memberService;


    @RequestMapping("/login/{url}.do")
    public String test(@PathVariable String url) {
        System.out.println(url);
        return "/login/"+url;
    }

    @RequestMapping("/login/memberJoin_ok.do")
    public String memberInsert(MemberVO vo, Model m){
        System.out.println(vo.getM_Id());
        int result = memberService.userInsert(vo);
        String message = vo.getM_Id()+"님 나가세요.";
        if(result>0) {
            message = vo.getM_Id() + "회원가입을 축하합니다.";
        }

        m.addAttribute("message", message);
        System.out.println("insert");
        return "login/memberJoin_ok";
    }

    @RequestMapping("/login/go_login.do")
    public String userLogin(MemberVO vo, HttpSession session) {
        System.out.println(vo.getM_Id());
        System.out.println(vo.getM_Pass());
        MemberVO result = memberService.idCheck_Login(vo);
        System.out.println("여기까지~");
        if(result==null || result.getM_Id() == null){
            return "redirect:/login/login.do";
        }
        else{
            //세션에 login 이름에 사용자이름 저장하기
            session.setAttribute("login", result.getM_Id());
            return "redirect:/login/login_ok.do";
        }

    }

}
