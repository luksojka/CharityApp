package pl.coderslab.charity.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

    @GetMapping(path = "/login")
    public String showLoginForm() {
        return "login";
    }

    @GetMapping(path = "/403")
    String showAccessDeniedPage() {
        return "403";
    }

}
