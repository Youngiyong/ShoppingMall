package spring.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import spring.mvc.domain.MemberVO;
import spring.mvc.service.MemberService;

import java.util.ArrayList;
import java.util.List;

import java.util.*;

@Controller
public class Member2Controller {

    @Autowired
    private MemberService memberService;


    @RequestMapping("/admin/updateMemberList.do")
    @ResponseBody
    public String updateMemberList(@RequestBody MemberVO[] vo){
        for(int i=0; i<vo.length; i++) {
            List<MemberVO> list = new ArrayList<>();
            list.add(vo[i]);
            memberService.updateMemberList(list);
        }

         return "성공";
    }

    @RequestMapping("/admin/members.do")
    public String getMemberList(Model m){
        m.addAttribute("memberList", memberService.getMemberList());
        return "/admin/members";
    }

    @RequestMapping("/admin/deleteMemberList.do")
    @ResponseBody
    public String deleteMemberList(@RequestBody MemberVO[] vo){
        for(int i=0; i<vo.length; i++){
            List<MemberVO> list = new ArrayList<>();
            list.add(vo[i]);
            memberService.deleteMemberList(list);
        }



        return "성공";
    }
}

