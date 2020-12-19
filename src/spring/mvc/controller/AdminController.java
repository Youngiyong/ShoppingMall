package spring.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

    @RequestMapping("/admin/{url}.do")
    public String test(@PathVariable String url) {
        System.out.println(url);
        return "/admin/"+url;
    }
}
