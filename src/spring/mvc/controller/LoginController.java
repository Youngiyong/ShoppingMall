package spring.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import spring.mvc.domain.AdminVO;
import spring.mvc.domain.MemberVO;
import spring.mvc.service.MemberService;

import javax.mail.*;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;
import java.util.Map;
import java.util.Properties;

@Controller
public class LoginController {

    @Autowired
    private MemberService memberService;

    @RequestMapping("/member/{url}.do")
    public String test(@PathVariable String url) {
        System.out.println(url);
        return "/member/"+url;
    }
    //카카오 로그 요청
    @RequestMapping("/member/userInsertKaKao.do")
    @ResponseBody
    public String userInsertKaKao(@RequestBody MemberVO vo, HttpSession session){
        System.out.println(vo.getM_Id());
        System.out.println(vo.getM_Email());
        System.out.println("40" + vo.getM_Name());
        MemberVO memberVO = memberService.idCheck_Login(vo);
        System.out.println("42"+memberVO.getM_Name());
        if(memberVO==null){
            System.out.println("43" + vo.getM_Name());
            memberService.userInsertKaKao(vo);
            session.setAttribute("m_Id", vo.getM_Id());
            session.setAttribute("m_Name", vo.getM_Name());
            session.setAttribute("m_Code", memberVO.getM_Code());
            System.out.println("1" + vo.getM_Name());
            return "아이디등록";
        } else{
            session.setAttribute("m_Id", memberVO.getM_Id());
            session.setAttribute("m_Name", memberVO.getM_Name());
            session.setAttribute("m_Code", memberVO.getM_Code());
            System.out.println("2" + memberVO.getM_Name());
            return "아이디확인";
        }


    }
    //회원가입 요청
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

    //회원가입 유효성 검사
    @RequestMapping(value = "/member/idCheck.do", produces ="application/text;charset=utf-8")
    @ResponseBody
    public String idCheck(MemberVO vo) {
        MemberVO result = memberService.idCheck_Login(vo);
        String message = "이미 사용중 입니다.";
        if(result  == null) {
            message = "사용가능한 아이디 입니다.";
        }
        return message;

    }
    @RequestMapping("/member/logout.do")
    public String logout(HttpSession session){
        System.out.println();
        System.out.println(session.getAttribute("m_Id"));
        System.out.println(session.getAttribute("m_Code"));

        if(session.getAttribute("m_Id")==null){
            return "redirect:/index.jsp";

        }
        else{
            session.removeAttribute("m_Name");
            session.removeAttribute("m_Code");
            session.removeAttribute("m_Id");
        }



        return "redirect:/index.jsp";
    }

    @RequestMapping("/member/loginCheck.do")
    @ResponseBody
    public Object loginCheck(@RequestBody Map<String, Object> map, HttpSession session) {

        MemberVO vo = new MemberVO();
        vo.setM_Id((String) map.get("m_Id"));
        vo.setM_Pass((String) map.get("m_Pass"));
        MemberVO memberVO = memberService.idCheck_Login(vo);
        if (memberVO == null || memberVO.getM_Id() == null) {
            System.out.println("로그인 실패");
            return "";

        } else {
            session.setAttribute("m_Name", memberVO.getM_Name());
            System.out.println(memberVO.getM_Name());
            session.setAttribute("m_Id", memberVO.getM_Id());
            session.setAttribute("m_Code", memberVO.getM_Code());
            System.out.println(memberVO.getM_Email());
            System.out.println("로그인 성공");
            return memberVO;
//      }

        }
    }

    //아이디 찾기
    @RequestMapping("/member/sendId.do")
    public String pwSearch(MemberVO vo){
        String user = "kosmotest93@gmail.com"; // 네이버일 경우 네이버 계정, gmail경우 gmail 계정
        String password = "test1234!";   // 패스워드
        MemberVO result;
        // SMTP 서버 정보를 설정한다.
        Properties prop = new Properties();
        prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.port", 465);
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.ssl.enable", "true");
        prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");
        System.out.println(vo.getM_Id());
        System.out.println(vo.getM_Pass());
        if (memberService.idSearch(vo) != null) {
            result = memberService.idSearch(vo);
        } else
            return "redirect:/member/idsearch_no";

        Session session = Session.getDefaultInstance(prop, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, password);
            }
        });

        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(user));

            //수신자메일주소
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(vo.getM_Email()));

            // Subject
            message.setSubject("안녕하세요. 기용이 입니다."); //메일 제목을 입력

            // Text
            message.setText("회원님의 아이디는 : " + result.getM_Id());    //메일 내용을 입력
            // send the message
            Transport.send(message); ////전송
            System.out.println("message sent successfully...");

        } catch (AddressException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (MessagingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }


        return "/member/idsearch_ok";
    }

    //패스워드 찾기
    @RequestMapping("/member/sendPw.do")
    public String idSearch(MemberVO vo) {
        String user = "kosmotest93@gmail.com"; // 네이버일 경우 네이버 계정, gmail경우 gmail 계정
        String password = "test1234!";   // 패스워드
        MemberVO result;
        boolean flag = false;
        // SMTP 서버 정보를 설정한다.
        Properties prop = new Properties();
        prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.port", 465);
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.ssl.enable", "true");
        prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");
        System.out.println(vo.getM_Id());
        System.out.println(vo.getM_Pass());
        result = memberService.idSearch(vo);
        if (result != null) {
            flag = true;
        } else return "/member/reset-password_no";

        if (flag==true) {
            memberService.updatePass(result);
            result = memberService.idSearch(vo);
        } else return "/member/reset-password_no";

        Session session = Session.getDefaultInstance(prop, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, password);
            }
        });

        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(user));

            //수신자메일주소
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(vo.getM_Email()));

            // Subject
            message.setSubject("안녕하세요. 기용이 입니다."); //메일 제목을 입력

            // Text
            message.setText("회원님의 아이디는 : " + result.getM_Id() + "회원님의 비밀번호는 : "  + result.getM_Pass());    //메일 내용을 입력
            // send the message
            Transport.send(message); ////전송
            System.out.println("message sent successfully...");

        } catch (AddressException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (MessagingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }


        return "/member/idsearch_ok";
    }

}
