package spring.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import spring.mvc.domain.MemberVO;
import spring.mvc.service.MemberService;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController {

    @Autowired
    private MemberService memberService;

    @RequestMapping("/member/{url}.do")
    public String test(@PathVariable String url) {
        System.out.println(url);
        return "/member/"+url;
    }

    @RequestMapping("/member/adminInsert.do")
    public String userInsert(MemberVO vo){
        String addr = vo.getM_Addr() + " "+ vo.getM_Addr2() +vo.getM_Addr3();
        System.out.println(addr);
        MemberVO memberVO = vo;
        memberVO.setM_Addr(addr);
        System.out.println(addr);
        memberService.userInsert(memberVO);
        return "/member/register_ok";
    }



}
