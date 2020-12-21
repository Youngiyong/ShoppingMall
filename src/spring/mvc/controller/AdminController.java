package spring.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import spring.mvc.domain.AdminVO;
import spring.mvc.service.AdminService;


import javax.mail.*;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;
import java.util.Properties;

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

    //로그인
    @RequestMapping("/admin/loginCheck.do")
    public String loginCheck(AdminVO vo, HttpSession session){
        AdminVO result = adminService.idCheck_Login(vo);
        if(result==null || result.getA_Id() == null){
            System.out.println("실패");
           return "/admin/login.do";
        }
        else{

            session.setAttribute("login", result.getA_Id());
            System.out.println("성공");
            return "redirect:/admin/index.do";
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
        } else return "/admin/idsearch_no";

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
        int resultNum;
        // SMTP 서버 정보를 설정한다.
        Properties prop = new Properties();
        prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.port", 465);
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.ssl.enable", "true");
        prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");

        if (adminService.idSearch(vo) != null) {
            result = adminService.idSearch(vo);
            System.out.println("idSearch성공");
            System.out.println(vo.getA_Id());
            System.out.println(vo.getA_Email());
        } else return "/admin/reset-password_no";

        if (adminService.updatePass(vo) != 0) {
            adminService.updatePass(vo);
            System.out.println("update성공");
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