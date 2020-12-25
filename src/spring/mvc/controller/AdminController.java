package spring.mvc.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;


import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import spring.mvc.domain.AdminVO;
import spring.mvc.service.AdminService;


import javax.mail.*;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;


    @RequestMapping("/admin/index.do")
    public String indexPgMove(AdminVO adminVO, Model model) {
        System.out.println("index() 호출");
        AdminVO vo =adminService.idCheck_Login(adminVO);
        model.addAttribute("a_Email", vo.getA_Email());

        return "/admin/index";
    }
    @RequestMapping("/admin/product.do")
    public String productAdd(Model model, AdminVO adminVO){

        return "/admin/product";
    }

    @RequestMapping("/admin/{url}.do")
    public String test(@PathVariable String url, Model model, AdminVO adminVO) { return "/admin/"+url; }


    //회원가입 요청
    @RequestMapping("/admin/adminInsert.do")
    public String adminInsert(AdminVO vo){
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
//
    //로그인
    @RequestMapping("/admin/loginCheck.do")
    @ResponseBody
    public Object loginCheck(@RequestBody Map<String, Object> map, HttpSession session, ModelAndView modelAndView) {

        AdminVO vo = new AdminVO();
        vo.setA_Id((String) map.get("a_Id"));
        vo.setA_Pass((String) map.get("a_Pass"));
        AdminVO adminVO = adminService.idCheck_Login(vo);
        if (adminVO == null || adminVO.getA_Id() == null) {
            System.out.println("로그인 실패");
            return "";

        } else {

            session.setAttribute("a_Id", adminVO.getA_Id());
            System.out.println(adminVO.getA_Email());
            System.out.println("로그인 성공");
            return adminVO;
//      }

     }
    }





    //아이디 찾기
    @RequestMapping("/admin/sendId.do")
    public String pwSearch(AdminVO vo){
        String user = "kosmotest93@gmail.com"; // 네이버일 경우 네이버 계정, gmail경우 gmail 계정
        String password = "test1234!";   // 패스워드
        AdminVO result;
        // SMTP 서버 정보를 설정한다.
        Properties prop = new Properties();
        prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.port", 465);
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.ssl.enable", "true");
        prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");

        if (adminService.idSearch(vo) != null) {
            result = adminService.idSearch(vo);
        } else
            return "redirect:/admin/idsearch_no";

        Session session = Session.getDefaultInstance(prop, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, password);
            }
        });

        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(user));

            //수신자메일주소
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(vo.getA_Email()));

            // Subject
            message.setSubject("안녕하세요. 기용이 입니다."); //메일 제목을 입력

            // Text
            message.setText("회원님의 아이디는 : " + result.getA_Id());    //메일 내용을 입력
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


        return "/admin/idsearch_ok";
    }

    //패스워드 찾기
    @RequestMapping("/admin/sendPw.do")
    public String idSearch(AdminVO vo) {
        String user = "kosmotest93@gmail.com"; // 네이버일 경우 네이버 계정, gmail경우 gmail 계정
        String password = "test1234!";   // 패스워드
        AdminVO result;
        boolean flag = false;
        // SMTP 서버 정보를 설정한다.
        Properties prop = new Properties();
        prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.port", 465);
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.ssl.enable", "true");
        prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");

        result = adminService.idSearch(vo);
        if (result != null) {
            flag = true;
        } else return "/admin/reset-password_no";

        if (flag==true) {
            adminService.updatePass(result);
            result = adminService.idSearch(vo);
        } else return "/admin/reset-password_no";

        Session session = Session.getDefaultInstance(prop, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, password);
            }
        });

        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(user));

            //수신자메일주소
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(vo.getA_Email()));

            // Subject
            message.setSubject("안녕하세요. 기용이 입니다."); //메일 제목을 입력

            // Text
            message.setText("회원님의 아이디는 : " + result.getA_Id() + "회원님의 비밀번호는 : "  + result.getA_Pass());    //메일 내용을 입력
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


        return "/admin/idsearch_ok";
    }

}