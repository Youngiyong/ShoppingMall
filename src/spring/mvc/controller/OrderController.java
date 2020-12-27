package spring.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import spring.mvc.service.MemberService;
import spring.mvc.service.ProductService;

@Controller
public class OrderController {

    @Autowired
    private MemberService memberService;

    @Autowired
    private ProductService productService;



}
